part of 'home_data_bloc.dart';

abstract class HomeDataState extends Equatable {
  const HomeDataState();
}

class HomeDataInitial extends HomeDataState {
  @override
  List<Object?> get props => [];
}

class HomeDataLoadInProgress extends HomeDataState {
  @override
  List<Object?> get props => [];
}

class HomeDataLoadFailure extends HomeDataState {
  const HomeDataLoadFailure({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class HomeDataLoadSuccess extends HomeDataState {
  const HomeDataLoadSuccess({required this.data});
  final HomeDataModel data;
  @override
  List<Object?> get props => [data];
}
