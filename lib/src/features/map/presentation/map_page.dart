import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.go('/calendar_events');
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: const Center(
          child: Text('Расположение корпусов'),
        ));
  }
}
