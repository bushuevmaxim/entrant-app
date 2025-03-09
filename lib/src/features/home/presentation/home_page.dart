import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../routing/routes.dart';
import '../domain/repositories/programms_repository.dart';
import 'bloc/home_bloc.dart';
import 'widgets/block_title.dart';
import 'widgets/programm_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        programmsRepository: context.read<IProgrammsRepository>(),
      )..add(const HomeEvent.started()),
      child: const HomePageView(),
    );
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                'Кафедра ПМФИ',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SliverToBoxAdapter(
              child: HomeBlockTitle(
                title: 'Направления подготовки',
              ),
            ),
            SliverPadding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12.0),
              sliver: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return switch (state) {
                    Success(:final programms) => SliverList.separated(
                        itemCount: programms.length,
                        itemBuilder: (context, index) {
                          return ProgrammCard(
                            programm: programms.elementAt(index),
                            onTap: () {
                              context.go(
                                Routes.programmWithId(
                                  programms.elementAt(index).id,
                                ),
                              );
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 12,
                          );
                        },
                      ),
                    Loading() => const SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    _ => SliverFillRemaining(
                        child: Center(
                          child: Text(
                            'Что-то пошло нет так...',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      )
                  };
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
