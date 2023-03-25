part of 'head_draver_cubit.dart';

class HeadDraverState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HeadDraverInitialState extends HeadDraverState {}

class HeadDraverLoadingState extends HeadDraverState {}

class HeadDraverHasDataState extends HeadDraverState {
  HeadDraverHasDataState({required this.name, required this.photoUrl});

  final String? name;
  final String? photoUrl;
  @override
  List<Object?> get props => [name, photoUrl];
}
