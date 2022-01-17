import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/pages/Home/home_cubit.dart';
import 'package:tokenlab_movie_app/pages/Home/home_state.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_cubit.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_page.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_state.dart';
import 'package:tokenlab_movie_app/widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filmes'),
      ),
      body: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadedState) {
              return ListView.builder(
                itemCount: state.movies.length,
                itemBuilder: (context, index) {
                  return MovieCard(movie: state.movies[index]);
                },
              );
            } else if (state is HomeErrorState) {
              return Center(
                child: Text(state.err),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
