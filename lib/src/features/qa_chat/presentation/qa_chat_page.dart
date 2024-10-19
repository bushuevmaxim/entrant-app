import 'package:flutter/material.dart';

class QAChatPage extends StatelessWidget {
  const QAChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Вопросы по поступлению')),
      body: const Center(
        child: Text(
          'Здесь будет чат для того, чтобы задавать общие вопросы по поступлению',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
