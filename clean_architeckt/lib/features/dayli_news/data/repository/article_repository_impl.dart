import 'package:clean_architeckt/core/resources/date_state.dart';
import 'package:clean_architeckt/features/dayli_news/data/models/article.dart';
import 'package:clean_architeckt/features/dayli_news/domain/repository/article_repository.dart';

class ArticleImplementation implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    throw UnimplementedError();
  }
}
