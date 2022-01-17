import 'package:equatable/equatable.dart';
import 'package:tokenlab_movie_app/modules/movie_module.dart';

class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<Movie> movies;

  HomeLoadedState({required this.movies});
}

class HomeErrorState extends HomeState {
  final String err;

  HomeErrorState({required this.err});
}
