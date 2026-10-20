import 'package:flutter/material.dart';
import '../config/app_config.dart';
import 'home_screen.dart';
import 'batches_screen.dart';
import 'study_material_screen.dart';
import 'test_series_screen.dart';
import 'profile_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // AppConfig के स्विच के हिसाब से टैब्स अपने-आप जुड़ते या हटते हैं
    final List<Widget> pages = [
      const HomeScreen(),
      if (AppConfig.enableBatchesSection) const BatchesScreen(),
      if (AppConfig.enableVideoLectures || AppConfig.enablePdfNotes)
        const StudyMaterialScreen(),
      if (AppConfig.enableTestSeries) const TestSeriesScreen(),
      if (AppConfig.enableProfileSection) const ProfileScreen(),
    ];

    final List<NavigationDestination> destinations = [
      const NavigationDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home_rounded),
        label: 'Home',
      ),
      if (AppConfig.enableBatchesSection)
        const NavigationDestination(
          icon: Icon(Icons.menu_book_outlined),
          selectedIcon: Icon(Icons.menu_book_rounded),
          label: 'Batches',
        ),
      if (AppConfig.enableVideoLectures || AppConfig.enablePdfNotes)
        const NavigationDestination(
          icon: Icon(Icons.play_lesson_outlined),
          selectedIcon: Icon(Icons.play_lesson_rounded),
          label: 'Study',
        ),
      if (AppConfig.enableTestSeries)
        const NavigationDestination(
          icon: Icon(Icons.quiz_outlined),
          selectedIcon: Icon(Icons.quiz_rounded),
          label: 'Tests',
        ),
      if (AppConfig.enableProfileSection)
        const NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
    ];

    final int safeIndex = _selectedIndex >= pages.length ? 0 : _selectedIndex;

    return Scaffold(
      body: pages[safeIndex],
      bottomNavigationBar: destinations.length > 1
          ? NavigationBar(
              selectedIndex: safeIndex,
              onDestinationSelected: (idx) {
                setState(() {
                  _selectedIndex = idx;
                });
              },
              destinations: destinations,
            )
          : null,
    );
  }
}
