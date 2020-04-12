import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/models/http_exception.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }

  String get userId {
    return _userId;
  }

  Future<void> signup(String email, String pass) async {
    return _authenticate(email, pass, 'signUp');
  }

  Future<void> login(String email, String pass) async {
    return _authenticate(email, pass, 'signInWithPassword');
  }

  Future<void> _authenticate(
      String email, String pass, String urlSegment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyDSaGLTFP4GlV0jg8FwzzmdkAVe6CmNQac";
    try {
      final response = await http.post(url,
          body: json.encode(
              {'email': email, 'password': pass, 'returnSecureToken': true}));
      print(json.decode(response.body));

      final responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now()
          .add(Duration(seconds: int.parse(responseData['expiresIn'])));
      notifyListeners();

    } catch (error) {
      throw error;
    }
  }
}
