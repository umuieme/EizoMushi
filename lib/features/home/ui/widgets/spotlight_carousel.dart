import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/features/home/ui/widgets/carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SpotlightCarousel extends HookWidget {
  const SpotlightCarousel({required this.spotlightList, super.key});
  final List<AnimeInfoHomeModel> spotlightList;
  @override
  Widget build(BuildContext context) {
    final activeIndex = useState(0);
    return Stack(
      children: [
        SizedBox(
          height: 400,
          child: PageView.builder(
            itemCount: spotlightList.length,
            padEnds: false,
            onPageChanged: (value) {
              activeIndex.value = value;
            },
            itemBuilder: (context, index) {
              return CarouselItem(
                position: index + 1,
                animeInfo: spotlightList[index],
              );
            },
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Align(
            child: AnimatedSmoothIndicator(
              count: spotlightList.length,
              activeIndex: activeIndex.value,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.white,
                dotColor: Colors.white38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
