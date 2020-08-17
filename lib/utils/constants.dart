class Constants {
  static String TOP_HEADLINES_URL =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=a742cadcd0594d2180ebdf9af773f861";

  static String headlinesFor(String keyword) {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=a742cadcd0594d2180ebdf9af773f861";
  }
}
