import 'package:equatable/equatable.dart';
import 'package:tokenlab_movie_app/modules/movie_module.dart';

class MovieState extends Equatable {
  @override
  List<Object> get props => [];
}

class MovieInitialState extends MovieState {}

class MovieLoadingState extends MovieState {}

class MovieLoadedState extends MovieState {
  final Movie movie;

  MovieLoadedState({required this.movie});
}

class MovieErrorState extends MovieState {
  final String err;

  MovieErrorState({required this.err});
}
