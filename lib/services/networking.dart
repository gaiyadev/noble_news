import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/news_article.dart';

class WebServices {
  Future<List<NewsArticle>> getLatestNews() async {
    const API_KEY = 'a742cadcd0594d2180ebdf9af773f861';
    String url =
        'http://newsapi.org/v2/everything?q=bitcoin&from=2020-07-17&sortBy=publishedAt&apiKey=$API_KEY';

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      print(response.body);
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      print(response.statusCode);
    }
  }
}
