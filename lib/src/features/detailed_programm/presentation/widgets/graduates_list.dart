import 'package:flutter/material.dart';
import '../../../home/domain/entities/programm.dart';
import 'graduate_card.dart';

class GraduatesList extends StatelessWidget {
  static const double _kCardHeight = 220.0;
  final List<Graduate> graduates;

  const GraduatesList({
    super.key,
    required this.graduates,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size.fromHeight(_kCardHeight)),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: graduates.length,
        itemBuilder: (context, index) {
          return GraduateCard(graduate: graduates[index]);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16.0),
      ),
    );
  }
}
