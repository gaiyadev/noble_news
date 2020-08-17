import 'package:news_app/models/news_article.dart';

class NewArticleViewModel {
  NewsArticle _newsArticle;

  NewArticleViewModel({NewsArticle article}) : _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description;
  }

  String get urlToImage {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }
}
