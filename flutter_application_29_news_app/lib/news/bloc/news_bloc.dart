import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:flutter_application_29_news_app/news/news.dart';

part 'news_event.dart';
part 'news_state.dart';

String apiPath(String countryCode) =>
    'https://newsapi.org/v2/top-headlines?country=$countryCode&apiKey=5ea6b14fb6084c9dae2f9a00f75cb044';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.dio) : super(NewsInitial()) {
    on<GetNewsEvent>(_onGetNewsEvent);
  }

  final Dio dio;

  FutureOr<void> _onGetNewsEvent(
    GetNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    try {
      emit(NewsLoading());
      final response = await dio.get(apiPath('us'));
      if (response.statusCode == 200) {
        final data = NewModel.fromJson(response.data);
        emit(NewsSuccess(data.articles));
      } else {
        final msj = 'GetNewsEvent Error status code'
            '${response.statusCode}\n message: ${response.data}';
        emit(NewsFailed(msj));
      }
    } catch (e) {
      final msj = 'GetNewsEvent Error: $e';
      emit(NewsFailed(msj));
    }
  }
}
