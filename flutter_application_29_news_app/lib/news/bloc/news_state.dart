part of 'news_bloc.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsSuccess extends NewsState {
  NewsSuccess(this.news);

  final List<Article> news;
}

final class NewsFailed extends NewsState {
  NewsFailed(this.errorMessage);

  final String errorMessage;
}
