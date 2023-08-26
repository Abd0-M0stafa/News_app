import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/dataModel.dart';

class GetNewsModel {
  Future<NewsModel?> getNews() async {
    String baseURL = 'https://newsapi.org/v2';
    String apiKey = 'e133e547e2e549968758f7d0366de490';
    try {
      http.Response response = await http.get(
        Uri.parse("$baseURL/everything?q=football&apiKey=$apiKey"),
      );

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        NewsModel dataModel = NewsModel.fromJson(decodedResponse);

        return dataModel;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
