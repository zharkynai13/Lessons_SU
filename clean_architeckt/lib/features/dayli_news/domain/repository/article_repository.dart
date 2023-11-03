import 'package:clean_architeckt/core/resources/date_state.dart';
import 'package:clean_architeckt/features/dayli_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
