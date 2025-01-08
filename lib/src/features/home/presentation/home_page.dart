import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../routing/routes.dart';
import '../domain/repositories/courses_repository.dart';
import 'bloc/home_bloc.dart';
import 'widgets/course_card.dart';

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
                'Кафедра ПМФИ',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                'Направления подготовки',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 12.0),
              sliver: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return switch (state) {
                    Success(:final courses) => SliverList.separated(
                        itemCount: courses.length,
                        itemBuilder: (context, index) {
                          return CourseCard(
                            course: courses.elementAt(index),
                            onTap: () {
                              context.go(
                                Routes.courseWithId(
                                  courses.elementAt(index).id,
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
      ),
    );
  }
}
