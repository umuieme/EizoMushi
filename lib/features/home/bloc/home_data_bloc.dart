import 'dart:developer';

import 'package:eizo_mushi/data/model/home/home_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_data_event.dart';
part 'home_data_state.dart';

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  HomeDataBloc({required this.repository}) : super(HomeDataInitial()) {
    on<HomeDataFetch>(_onFetchHomeData);
  }
  final AnimeRepository repository;

  Future<void> _onFetchHomeData(
    HomeDataFetch event,
    Emitter<HomeDataState> emit,
  ) async {
    emit(HomeDataLoadInProgress());
    final response = await repository.fetchHomeData();
    response.fold(
      (error) {
        log(error.message);
        emit(HomeDataLoadFailure(message: error.message));
      },
      (data) {
        emit(HomeDataLoadSuccess(data: data));
      },
    );
  }
}
