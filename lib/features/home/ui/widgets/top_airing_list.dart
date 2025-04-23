import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/features/common/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class TopAiring extends StatelessWidget {
  const TopAiring({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Top Airing',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemExtent: 200,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: AppImageView(
                        imageUrl:
                            'https://cdn.noitatnemucod.net/thumbnail/300x400/100/bcd84731a3eda4f4a306250769675065.jpg',
                        width: 100,
                        // height: 150,
                        fit: BoxFit.cover,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'One Piece',
                        style: context.textTheme.headlineSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
