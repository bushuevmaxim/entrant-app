import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

import '../../home/domain/repositories/programms_repository.dart';
import 'bloc/detailed_programm_bloc.dart';
import 'widgets/info_section.dart';
import 'widgets/exams_list.dart';
import 'widgets/programm_name.dart';
import 'widgets/programm_code.dart';
import 'widgets/screen_title.dart';

class DetailedProgrammPage extends StatelessWidget {
  final String programmId;

  const DetailedProgrammPage({
    super.key,
    required this.programmId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailedProgrammBloc(
        programmRepository: context.read<IProgrammsRepository>(),
        programmId: programmId,
      )..add(
          const DetailedProgrammEvent.started(),
        ),
      child: const DetailedProgrammView(),
    );
  }
}

class DetailedProgrammView extends StatelessWidget {
  const DetailedProgrammView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailedProgrammBloc, DetailedProgrammState>(
        builder: (context, state) {
          return switch (state) {
            Initial() => const Center(child: CircularProgressIndicator()),
            Loading() => const Center(child: CircularProgressIndicator()),
            Success(programm: final programm) =>
              ProgrammContent(programm: programm),
            Failure() => const Center(child: Text('Error occurred')),
          };
        },
      ),
    );
  }
}

class ProgrammContent extends StatelessWidget {
  final Programm programm;

  const ProgrammContent({super.key, required this.programm});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Направления ', textAlign: TextAlign.start),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgrammCode(code: programm.code),
                const SizedBox(height: 16),
                ProgrammName(name: programm.name),
                const SizedBox(height: 16),
                InfoSection(
                  title: 'Форма обучения:',
                  content: Subtitle(
                    content: programm.educationLevel,
                  ),
                ),
                ExamsList(
                  requiredExams: programm.requiredExams,
                  electiveExams: programm.electiveExams,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProgrammHeaderSliver extends StatelessWidget {
  final Programm programm;

  const ProgrammHeaderSliver({
    super.key,
    required this.programm,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: DetailedProgrammAppBarContent(
        title: 'Направления',
        onBackPressed: () => Navigator.pop(context),
      ),
    );
  }
}
