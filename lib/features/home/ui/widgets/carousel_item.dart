import 'package:eizo_mushi/app/theme/app_colors.dart';
import 'package:eizo_mushi/app/utils/context_extension.dart';
import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/anime-detail/ui/screen/anime_detail_screen.dart';
import 'package:eizo_mushi/features/common/widgets/app_image_view.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    required this.animeInfo,
    required this.position,
    super.key,
  });
  final AnimeInfoHomeModel animeInfo;
  final int position;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push<void>(
        context,
        MaterialPageRoute(
          builder: (context) => AnimeDetailPage(
            animeBasicInfo: animeInfo,
          ),
        ),
      ),
      child: Stack(
        children: [
          AppImageView(
            imageUrl: animeInfo.poster,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    '#$position Spotlight',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColor.warning,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          animeInfo.title,
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton.filled(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
