import 'package:flutter/material.dart';
import 'package:pmfi_entrant_app/src/features/detailed_programm/presentation/widgets/info_section.dart';
import 'package:pmfi_entrant_app/src/features/home/domain/entities/programm.dart';

class ExamsList extends StatelessWidget {
  final List<Exam> requiredExams;
  final List<Exam> electiveExams;

  const ExamsList({
    super.key,
    required this.requiredExams,
    required this.electiveExams,
  });

  @override
  Widget build(BuildContext context) {
    return InfoSection(
      title: 'Экзамены для поступления',
      content: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: (requiredExams + electiveExams)
            .map(
              (exam) => _ExamItem(
                name: exam.name,
                isRequired: requiredExams.contains(exam),
              ),
            )
            .toList(),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}

class _ExamItem extends StatelessWidget {
  final String name;
  final bool isRequired;

  const _ExamItem({
    required this.name,
    required this.isRequired,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isRequired
            ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
            : Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isRequired
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.outline.withOpacity(0.5),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.school_outlined,
            size: 20,
            color: isRequired
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(width: 12),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isRequired
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ],
      ),
    );
  }
}
