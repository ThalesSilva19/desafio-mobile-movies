import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tokenlab_movie_app/pages/Home/home_cubit.dart';
import 'package:tokenlab_movie_app/pages/Home/home_page.dart';
import 'package:tokenlab_movie_app/pages/Home/home_state.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_cubit.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_page.dart';
import 'package:tokenlab_movie_app/pages/Movie/movie_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filmes Tokenlab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider<HomeCubit>(
        create: (context) => HomeCubit(HomeInitialState()),
        child: const HomePage(),
      ),
    );
  }
}
