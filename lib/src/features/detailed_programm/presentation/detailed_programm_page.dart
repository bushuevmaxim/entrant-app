import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pmfi_entrant_app/l10n/extensions.dart';
import 'package:pmfi_entrant_app/src/features/detailed_programm/presentation/widgets/graduates_list.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

import '../../home/domain/repositories/programms_repository.dart';
import 'bloc/detailed_programm_bloc.dart';
import 'widgets/info_section.dart';
import 'widgets/exams_list.dart';
import 'widgets/programm_name.dart';
import 'widgets/programm_code.dart';
import 'widgets/companies_grid.dart';
import 'widgets/profile_section.dart';

class DetailedProgrammPage extends StatelessWidget {
  final String programmId;

  const DetailedProgrammPage({super.key, required this.programmId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => DetailedProgrammBloc(
            programmRepository: context.read<IProgrammsRepository>(),
            programmId: programmId,
          )..add(const DetailedProgrammEvent.started()),
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
            Success(programm: final programm) => ProgrammContent(
              programm: programm,
            ),
            Failure() => Center(child: Text(context.l10n.error)),
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
        ProgrammHeaderSliver(programm: programm),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgrammCode(code: programm.code),
                const SizedBox(height: 12.0),
                ProgrammName(name: programm.name),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: InfoSection(
            title: context.l10n.educationForm,
            content: Subtitle(content: programm.educationLevel),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: InfoSectionTitle(title: context.l10n.profiles),
          ),
        ),
        ProfileSection(profiles: programm.profiles),
        SliverToBoxAdapter(
          child: ExamsList(
            requiredExams: programm.requiredExams,
            electiveExams: programm.electiveExams,
          ),
        ),
        SliverToBoxAdapter(
          child: InfoSection(
            title: context.l10n.graduates,
            content: GraduatesList(graduates: programm.graduates),
            contentPadding: EdgeInsets.zero,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: InfoSectionTitle(title: context.l10n.practiceLocations),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: CompaniesGrid(companies: programm.companies),
        ),
      ],
    );
  }
}

class ProgrammHeaderSliver extends StatelessWidget {
  final Programm programm;

  const ProgrammHeaderSliver({super.key, required this.programm});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: false,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: DetailedProgrammAppBarContent(
        title: context.l10n.directions,
        onBackPressed: () => Navigator.pop(context),
      ),
    );
  }
}

class DetailedProgrammAppBarContent extends StatelessWidget {
  final String title;
  final bool centerTitle;
  final VoidCallback? onBackPressed;

  const DetailedProgrammAppBarContent({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          centerTitle ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        if (onBackPressed != null) ...[
          IconButton(
            icon: const Icon(Icons.chevron_left, color: Color(0xFF9C6DFF)),
            onPressed: onBackPressed,
          ),
          const SizedBox(width: 8),
        ],
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF9C6DFF),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
