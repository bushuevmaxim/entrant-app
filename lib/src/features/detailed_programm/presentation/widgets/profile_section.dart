import 'package:flutter/material.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

class ProfileSection extends StatelessWidget {
  final List<Profile> profiles;

  const ProfileSection({
    super.key,
    required this.profiles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        return ProfileCard(profile: profiles[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16.0),
    );
  }
}

class ProfileCard extends StatefulWidget {
  final Profile profile;

  const ProfileCard({
    super.key,
    required this.profile,
  });

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
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.profile.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: widget.profile.studyForms
                  .map(
                    (form) => ChoiceChip(
                      label: Text(form.studyForm.name),
                      selected: form == selectedStudyForm,
                      onSelected: (selected) {
                        if (selected) {
                          setState(() {
                            selectedStudyForm = form;
                          });
                        }
                      },
                    ),
                  )
                  .toList(),
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
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
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
