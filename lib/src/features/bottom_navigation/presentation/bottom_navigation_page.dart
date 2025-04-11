import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pmfi_entrant_app/l10n/extensions.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey('BottomNavigationPage'));
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
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        elevation: 3,
        backgroundColor: colorScheme.surface,
        indicatorColor: colorScheme.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        animationDuration: const Duration(milliseconds: 300),
        destinations: [
          NavigationDestination(
            label: context.l10n.mainPage,
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home_rounded),
          ),
          NavigationDestination(
            label: context.l10n.eventsPage,
            icon: const Icon(Icons.event_outlined),
            selectedIcon: const Icon(Icons.event_rounded),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
