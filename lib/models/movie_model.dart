class Movie {
  bool? adult;
  List<String>? genres;
  int id = -1;
  String? originalTitle;
  String? overview;
  double? popularity;
  String posterUrl = '';
  String? releaseDate;
  int? runtime;
  String title = '';
  double? voteAverage;
  int? voteCount;

  Movie(
      {this.adult,
      this.genres,
      required this.id,
      this.originalTitle,
      this.overview,
      this.popularity,
      required this.posterUrl,
      this.releaseDate,
      this.runtime,
      required this.title,
      this.voteAverage,
      this.voteCount});

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    genres = json['genres'].cast<String>();
    id = json['id'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterUrl = json['poster_url'];
    releaseDate = json['release_date'];
    runtime = json['runtime'];
    title = json['title'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['adult'] = adult;
    data['genres'] = genres;
    data['id'] = id;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_url'] = posterUrl;
    data['release_date'] = releaseDate;
    data['runtime'] = runtime;
    data['title'] = title;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}
