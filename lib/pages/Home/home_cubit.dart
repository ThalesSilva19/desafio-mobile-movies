import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/models/movie_model.dart';
import 'package:tokenlab_movie_app/pages/Home/home_state.dart';
import 'package:http/http.dart' as http;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(HomeState initialState) : super(HomeInitialState()) {
    _fetchMovies();
  }

  void _fetchMovies() async {
    List<Movie> movies = [];
    String url = 'https://desafio-mobile.nyc3.digitaloceanspaces.com/movies';
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        json.forEach((movie) {
          movies.add(Movie.fromJson(movie));
        });
        emit(HomeLoadedState(movies: movies));
      } else {
        emit(HomeErrorState(err: 'Erro: ${response.statusCode}'));
      }
    } catch (err) {
      emit(HomeErrorState(err: 'Erro: $err'));
    }
  }
}
