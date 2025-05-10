import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> debounce<Event>({Duration? duration}) =>
    (events, mapper) =>
        events.debounce(duration ?? _duration).switchMap(mapper);
