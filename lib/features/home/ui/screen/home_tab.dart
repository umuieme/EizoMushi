import 'package:eizo_mushi/features/home/ui/widgets/spotlight_carousel.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SpotlightCarousel(),
        ],
      ),
    );
  }
}
