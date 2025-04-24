import 'package:flutter/material.dart';

class ExpandableOverview extends StatelessWidget {
  const ExpandableOverview({required this.overview, super.key});
  final String overview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          overview,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.white),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              backgroundColor: Colors.black87,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (_) => Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Text(
                    overview,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
          child: const Text(
            'Show more',
          ),
        ),
      ],
    );
  }
}
