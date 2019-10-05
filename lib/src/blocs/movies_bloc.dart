import 'package:flutter_basics/src/models/company_haltrip.dart';
import 'package:flutter_basics/src/models/item.dart';
import 'package:flutter_basics/src/resources/dio.dart';
import 'package:flutter_basics/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();
  final _companyFetcher = PublishSubject<Company>();

  Observable<ItemModel> get allMovies => _moviesFetcher.stream;
  Observable<Company> get allCompanyData => _companyFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
    _companyFetcher.close();
  }

  fetchCompany() async {
    //Company companyModel = await _repository.fetchCompany();
    //_companyFetcher.sink.add(companyModel);

      DioSingleton.instance
          .fetchCompany()
          .then((response) {
        Company companyModel = response;
        _companyFetcher.sink.add(companyModel);
      }).catchError((error) {
        print("Error:"+error.toString());

      });
  }
}

final bloc = MoviesBloc();