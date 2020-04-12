import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false});

  Future<void> toggleFavoriteStatus(String authToken) async {
    final url = "https://flutter-udemy-c46b2.firebaseio.com/products/$id.json?auth=$authToken";
    final oldStatus = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
    try {
      final response = await http.patch(url, body: json.encode({'isFavorite': isFavorite}));
      if(response.statusCode >= 400){
        _setValue(oldStatus); 
      }
    } catch (error) {
      _setValue(oldStatus);
    }
  }

  void _setValue(bool value) {
     isFavorite = value;
    notifyListeners(); 
  }
}
