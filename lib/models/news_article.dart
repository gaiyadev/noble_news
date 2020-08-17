class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String url;
  final String publishedAt;

  NewsArticle(
      {this.url,
      this.description,
      this.title,
      this.urlToImage,
      this.publishedAt});

  factory NewsArticle.fromJSON(Map<String, dynamic> json) {
    return NewsArticle(
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt']);
  }
}
