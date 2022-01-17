import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_cubit.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_state.dart';
import 'package:tokenlab_movie_app/widgets/movie_details.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: const Text('Detalhes'),
      ),
      body: SafeArea(
        child: BlocBuilder<MovieCubit, MovieState>(
          builder: (context, state) {
            if (state is MovieLoadedState) {
              return Center(
                child: MovieDetails(movie: state.movie),
              );
            } else if (state is MovieErrorState) {
              return Center(
                child: Text(state.err),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
