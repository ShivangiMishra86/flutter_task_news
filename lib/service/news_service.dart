import 'dart:convert';
import 'dart:developer';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:flutter_task/model/news.dart';

class NewsService {
  static String BASE_URL = "https://newsapi.org/v2/everything?q=";
  getNewsList(String query) async {
    var response = await http.get(Uri.parse(BASE_URL+query+"&apiKey=aa67cb9289bc4ffca7f51aa44f7ba2ea"));
    if(response.statusCode ==200){
      List<News> newsList ;
      var finalResult = json.decode(response.body);
      newsList  = (finalResult['articles'] as List).map((i) => News.fromJson(i)).toList();

      return newsList;
    }else{
      log('error occur');
    }
  }
}