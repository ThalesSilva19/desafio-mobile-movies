import 'package:flutter/material.dart';
import 'package:tokenlab_movie_app/models/movie_model.dart';

class MovieDetails extends StatelessWidget {
  final Movie movie;
  const MovieDetails({Key? key, required this.movie}) : super(key: key);

  String _dateFormat(String date) {
    List<String> dateAux = date.split('-');
    String newDate;
    newDate = '${dateAux[2]}/${dateAux[1]}/${dateAux[0]}';
    return newDate;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Center(
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
                        color: Colors.cyan,
                        child: Center(child: Text(movie.title.toString())),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Título Original: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${movie.originalTitle}')
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Gêneros: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${movie.genres}'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Popularidade: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${movie.popularity}'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Data de lançamento: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(_dateFormat('${movie.releaseDate}')),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text('Tempo de filme: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('${movie.runtime} (min)'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Nota: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${movie.voteAverage}/10'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Número de votos: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('${movie.voteCount}'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: [
                  const Text(
                    'Sinópse: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${movie.overview}',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
