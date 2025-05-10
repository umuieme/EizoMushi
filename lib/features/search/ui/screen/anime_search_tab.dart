import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/features/search/bloc/anime_search_bloc.dart';
import 'package:eizo_mushi/features/search/ui/widget/anime_search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeSearchTab extends StatelessWidget {
  const AnimeSearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AnimeSearchBloc>(),
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: AnimeSearchBody(),
        ),
      ),
    );
  }
}
