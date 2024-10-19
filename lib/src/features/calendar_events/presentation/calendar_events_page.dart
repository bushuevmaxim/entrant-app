import 'package:flutter/material.dart';

class CalendarEventsPage extends StatelessWidget {
  const CalendarEventsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Календарь событий')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Открытие карты на весь экран')));
        },
        label: const Text('Показать расположение корпусов'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Center(
        child: Text(
          'Здесь будет кадендарь с событиями',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
