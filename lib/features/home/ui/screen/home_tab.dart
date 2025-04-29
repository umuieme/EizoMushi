import 'package:eizo_mushi/app/di/di.dart';
import 'package:eizo_mushi/features/common/widgets/app_loading.dart';
import 'package:eizo_mushi/features/common/widgets/error_view.dart';
import 'package:eizo_mushi/features/home/bloc/home_data_bloc.dart';
import 'package:eizo_mushi/features/home/ui/widgets/spotlight_carousel.dart';
import 'package:eizo_mushi/features/home/ui/widgets/top_airing_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeDataBloc>()..add(HomeDataFetch()),
      child: BlocBuilder<HomeDataBloc, HomeDataState>(
        builder: (context, state) {
          if (state is HomeDataLoadInProgress) {
            return const AppLoading();
          } else if (state is HomeDataLoadFailure) {
            return ErrorView(
              message: state.message,
              onPressed: () {
                context.read<HomeDataBloc>().add(HomeDataFetch());
              },
            );
          } else if (state is HomeDataLoadSuccess) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SpotlightCarousel(
                    spotlightList: state.data.spotlights,
                  ),
                  TopAiring(
                    topAiringList: state.data.topAiring,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
