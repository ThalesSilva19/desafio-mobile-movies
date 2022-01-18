import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/modules/movie_module.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_cubit.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_page.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_state.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider<MovieCubit>(
            create: (context) =>
                MovieCubit(initialState: MovieInitialState(), id: movie.id),
            child: const MoviePage(),
          ),
        ),
      ),
      child: Image.network(
        movie.posterUrl.toString(),
        height: 300,
        width: 200,
        errorBuilder: (context, error, stackTrace) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 300,
                width: 200,
                color: Colors.black,
                child: Center(
                    child: Text(movie.title.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white))),
              ),
            ),
          );
        },
      ),
    );
  }
}
