import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/repositories/courses_repository.dart';
import 'package:pmfi_entrant_app/src/features/home/presentation/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        coursesRepository: context.read<ICoursesRepository>(),
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
              'Направления подготовки',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 12.0),
            sliver: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return switch (state) {
                  Success(:final courses) => SliverList.builder(
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: 200,
                            child: InkWell(
                              onTap: () {
                                context.go(
                                  '/details',
                                );
                              },
                              child: Card(
                                child: Center(
                                  child: Text(courses.elementAt(index).name),
                                ),
                              ),
                            ));
                      },
                    ),
                  _ => const SliverToBoxAdapter(
                      child: Center(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    )
                };
              },
            ),
          ),
        ],
      ),
    ));
  }
}
