import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('BottomNavigationPage'));
  final StatefulNavigationShell navigationShell;

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Главная', icon: Icon(Icons.home)),
          NavigationDestination(
              label: 'Задать вопрос', icon: Icon(Icons.question_answer)),
          NavigationDestination(
              label: 'События', icon: Icon(Icons.calendar_month)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
