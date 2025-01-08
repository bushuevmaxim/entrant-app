import 'package:flutter/material.dart';

class HomeBlockTitle extends StatelessWidget {
  final String title;
  const HomeBlockTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
