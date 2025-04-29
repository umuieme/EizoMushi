import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/episode/episode_model.dart';
import 'package:flutter/material.dart';

class EpisodeListView extends StatelessWidget {
  const EpisodeListView({required this.episodeList, super.key});
  final List<EpisodeModel> episodeList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text('Episodes', style: context.textTheme.titleLarge),
        Expanded(
          child: ListView.separated(
            itemCount: episodeList.length,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              return Row(
                spacing: 8,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      episodeList[index].title,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
