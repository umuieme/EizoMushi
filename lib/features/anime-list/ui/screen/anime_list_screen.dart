import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-list/ui/widget/anime_item.dart';
import 'package:flutter/material.dart';

class AnimeListScreen extends StatelessWidget {
  const AnimeListScreen({
    required this.title,
    required this.animeList,
    super.key,
  });
  final List<AnimeInfoHomeModel> animeList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.separated(
        itemCount: animeList.length,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          return AnimeItemWidget(anime: animeList[index]);
        },
      ),
    );
  }
}
