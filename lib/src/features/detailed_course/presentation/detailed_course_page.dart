import 'package:flutter/material.dart';

class DetailedCoursePage extends StatelessWidget {
  final String title;
  const DetailedCoursePage({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Название направления')),
      body: const Center(
        child: Text(
          'Здесь будет подробная информация о направлении',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
