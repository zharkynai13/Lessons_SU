import 'package:clean_architeckt/features/dayli_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    final int? id,
    final String? author,
    final String? title,
    final String? description,
    final String? url,
    final String? urlToImage,
    final String? publishedAt,
    final String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map["author"] ?? "",
      title: map["title"] ?? "",
      description: map["description"] ?? "",
      url: map["url"] ?? "",
      urlToImage: map["urlToImage"] ?? "",
      publishedAt: map["publishedAt"] ?? "",
      content: map["content"] ?? "",
    );
  }
}

class ArticleSecond extends ArticleEntity {
  final int? id;
  final String? name;
  final String? description;
  final String? url;
  final String? content;

  const ArticleSecond(
      {this.id, this.name, this.description, this.url, this.content});
}
