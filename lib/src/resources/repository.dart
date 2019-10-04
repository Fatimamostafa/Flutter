import 'package:flutter_basics/src/models/item.dart';
import 'dart:async';
import 'api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}