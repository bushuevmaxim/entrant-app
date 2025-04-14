import 'package:flutter/material.dart';
import 'package:pmfi_entrant_app/l10n/extensions.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

class ProfileSection extends StatelessWidget {
  final List<Profile> profiles;

  const ProfileSection({super.key, required this.profiles});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        return ProfileCard(profile: profiles[index]);
      },
      separatorBuilder:
          (context, index) =>
              Divider(height: 2, color: Theme.of(context).dividerColor),
    );
  }
}

class ProfileCard extends StatefulWidget {
  final Profile profile;

  const ProfileCard({super.key, required this.profile});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  late ProfileStudyForm selectedStudyForm;

  @override
  void initState() {
    super.initState();
    selectedStudyForm = widget.profile.studyForms.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              border: Border.all(
                color: Theme.of(context).dividerColor,
                width: 1.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.profile.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              if (widget.profile.studyForms.length > 1)
                ...widget.profile.studyForms.map(
                  (form) => ChoiceChip(
                    label: Text(form.studyForm.name),
                    selected: form == selectedStudyForm,
                    selectedColor: Theme.of(context).focusColor,
                    showCheckmark: false,
                    onSelected: (selected) {
                      if (selected) {
                        setState(() {
                          selectedStudyForm = form;
                        });
                      }
                    },
                  ),
                )
              else
                Chip(
                  label: Text(widget.profile.studyForms.first.studyForm.name),
                  backgroundColor: Theme.of(context).focusColor,
                  side: BorderSide.none,
                ),
            ],
          ),
          const SizedBox(height: 16.0),
          BudgetSection(
            year: selectedStudyForm.year,
            nPlaces: selectedStudyForm.nPlacesBudget!,
            passingScore: selectedStudyForm.passingScoreBudget,
          ),
          const SizedBox(height: 16.0),
          PaidSection(
            year: selectedStudyForm.year,
            nPlaces: selectedStudyForm.nPlacesPaid!,
            costPerYear: selectedStudyForm.costPerYear,
            passingScore: selectedStudyForm.passingScorePaid,
            minScore: selectedStudyForm.minScorePaid,
          ),
          const SizedBox(height: 16.0),
          CourseSection(courses: widget.profile.courses),
        ],
      ),
    );
  }
}

class CourseSection extends StatelessWidget {
  final List<ProfileCourse> courses;

  const CourseSection({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(title: context.l10n.courses),
        const SizedBox(height: 8.0),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                context.l10n.course(index + 1),
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
              leading: const Icon(Icons.school_sharp),
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(8.0),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Theme.of(context).primaryColor),
              ),

              childrenPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              children:
                  courses[index].disciplines
                      .map(
                        (discipline) => ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: const Icon(Icons.circle, size: 8),
                          title: Text(
                            discipline.name,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )
                      .toList(),
            );
          },
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleMedium);
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(value)],
      ),
    );
  }
}

class BudgetSection extends StatelessWidget {
  final int year;
  final int nPlaces;
  final int? passingScore;

  const BudgetSection({
    super.key,
    required this.year,
    required this.nPlaces,
    this.passingScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Бюджет'),
        const SizedBox(height: 8.0),
        InfoRow(label: 'Год', value: year.toString()),
        InfoRow(label: 'Количество мест', value: nPlaces.toString()),
        if (passingScore != null)
          InfoRow(label: 'Проходной балл', value: passingScore.toString()),
      ],
    );
  }
}

class PaidSection extends StatelessWidget {
  final int year;
  final int nPlaces;
  final int? costPerYear;
  final int? passingScore;
  final int? minScore;

  const PaidSection({
    super.key,
    required this.year,
    required this.nPlaces,
    this.costPerYear,
    this.passingScore,
    this.minScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: 'Платное обучение'),
        const SizedBox(height: 8.0),
        InfoRow(label: 'Год', value: year.toString()),
        InfoRow(label: 'Количество мест', value: nPlaces.toString()),
        if (costPerYear != null)
          InfoRow(label: 'Стоимость за год', value: '$costPerYear ₽'),
        if (passingScore != null)
          InfoRow(label: 'Проходной балл', value: passingScore.toString()),
        if (minScore != null)
          InfoRow(label: 'Минимальный балл', value: minScore.toString()),
      ],
    );
  }
}
