import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:flutter/material.dart';

class EpisodeItemVertical extends StatelessWidget {
  const EpisodeItemVertical({
    required this.episode,
    super.key,
  });

  final EpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              episode.episodeNo.toString(),
              style: context.textTheme.titleMedium,
            ),
          ),
        ),
        Expanded(
          child: Text(
            episode.title,
            style: context.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
