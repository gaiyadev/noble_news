import 'package:flutter/cupertino.dart';
import 'package:news_app/models/news_article.dart';
import 'package:news_app/services/networking.dart';
import 'package:news_app/viewModel/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewArticleViewModel> articles = List<NewArticleViewModel>();

  void populateTopHeadLines() async {
    List<NewsArticle> newsArticles = await WebServices().getLatestNews();
    this.articles =
        newsArticles.map((article) => NewArticleViewModel(article: article));
    notifyListeners();
  }
}
