// ignore_for_file: unused_import

import 'package:eizo_mushi/features/home/ui/screen/home_tab.dart';
import 'package:eizo_mushi/features/library/ui/screen/library_tab.dart';
import 'package:eizo_mushi/features/search/ui/screen/anime_search_tab.dart';
import 'package:eizo_mushi/features/settings/ui/screen/settings_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainScreen extends HookWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex.value,
        children: const [
          HomeTab(),
          AnimeSearchTab(),
          LibraryTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: (index) {
          selectedIndex.value = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
