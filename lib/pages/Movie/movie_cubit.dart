import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/models/movie_model.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_state.dart';
import 'package:http/http.dart' as http;

class MovieCubit extends Cubit<MovieState> {
  final int id;

  MovieCubit({required MovieState initialState, required this.id})
      : super(MovieInitialState()) {
    _fetchMovie(id);
  }

  void _fetchMovie(int id) async {
    Movie movie;
    String url =
        'https://desafio-mobile.nyc3.digitaloceanspaces.com/movies/$id';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        movie = Movie.fromJson(json);
        emit(MovieLoadedState(movie: movie));
      } else {
        emit(MovieErrorState(err: 'Erro: ${response.statusCode}'));
      }
    } catch (err) {
      emit(MovieErrorState(err: 'Erro: $err'));
    }
  }
}
