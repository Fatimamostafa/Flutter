import 'package:flutter_basics/src/models/company_haltrip.dart';
import 'package:flutter_basics/src/models/item.dart';
import 'package:flutter_basics/src/models/trailer.dart';
import 'dart:async';
import 'api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);

  Future<Company> fetchCompany() => moviesApiProvider.fetchCompany();
}