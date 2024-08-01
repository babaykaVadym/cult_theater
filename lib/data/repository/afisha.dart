import 'dart:core';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AfishaRepository {
  static const service = 'News';

  final dio = Dio();

  AfishaRepository();

  Future<List<News>> getNewsList({
    int pageNumber = 0,
    int pageSize = 100,
    String? orderBy,
    String? fields,
    bool? descOrderDirection,
  }) async {
    debugPrint("[NewsRepository] getNewsList");
    try {
      final response = await dio.get(
        '$urlDomen/News',
      );

      List<News> news = [];

      for (var element in response.data) {
        news.add(News.fromJson(element));
      }

      return news;
    } catch (e) {
      debugPrint("[NewsRepository] getNewsList !!!!! ERROR $e");
      return [];
    }
  }

  Future<News?> getNewsById({
    required int newsId,
  }) async {
    debugPrint("[NewsRepository] getNewsById");
    try {
      final response = await dio.get(
        '$urlDomen/News/$newsId',
        // queryParameters: {
        //   "PageNumber": pageNumber,
        //   "PageSize": pageSize,
        //   "OrderBy": orderBy ?? '',
        //   "DescOrderDirection": descOrderDirection ?? true,
        //   "Fields": fields ?? '',
        // },
      );

      return News.fromJson(response.data);
    } catch (e) {
      debugPrint("[NewsRepository] getNewsList !!!!! ERROR $e");
      return null;
    }
  }
}
