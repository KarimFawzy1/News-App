class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final Source source;
  final String? author;
  final String? content;
  ArticleModel({
    this.content,
    this.image,
    this.title,
    this.subTitle,
    required this.source,
    this.author,
  });
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      source: Source.fromJson(json['source']),
      author: json['author'],
      content: json['content'],
    );
  }
}

class Source {
  final String name;
  Source({required this.name});
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      name: json['name'],
    );
  }
}
