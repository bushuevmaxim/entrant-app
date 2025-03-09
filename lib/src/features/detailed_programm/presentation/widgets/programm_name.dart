import 'package:flutter/material.dart';

class ProgrammName extends StatelessWidget {
  final String name;

  const ProgrammName({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
      textAlign: TextAlign.start,
    );
  }
}
