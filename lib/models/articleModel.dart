class ArticleModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? newsURL;

  ArticleModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.newsURL});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      newsURL: json['url'],
    );
  }
}
