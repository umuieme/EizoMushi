import 'dart:developer';

import 'package:eizo_mushi/data/model/streaming_info/streaming_info_model.dart';
import 'package:eizo_mushi/data/repository/anime_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'streaming_info_event.dart';
part 'streaming_info_state.dart';

class StreamingInfoBloc extends Bloc<StreamingInfoEvent, StreamingInfoState> {
  StreamingInfoBloc({required this.repository, required this.animeId})
      : super(StreamingInfoInitial()) {
    on<StreamingInfoFetch>(_onFetchStreamingInfo);
  }
  final AnimeRepository repository;
  final String animeId;

  Future<void> _onFetchStreamingInfo(
    StreamingInfoFetch event,
    Emitter<StreamingInfoState> emit,
  ) async {
    emit(StreamingInfoLoadInProgress());
    final response = await repository.fetchStreamingInfo(
      animeId: animeId,
      episodeId: event.episodeId,
    );
    response.fold(
      (error) {
        log(error.message);
        emit(StreamingInfoLoadFailure(message: error.message));
      },
      (data) {
        emit(StreamingInfoLoadSuccess(data: data));
      },
    );
  }
}
