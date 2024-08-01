import 'dart:core';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class TheaterHallsRepository {
  static const service = 'News';

  final dio = Dio();

  TheaterHallsRepository();

  Future<List<AfishaModel>> getEventsList({
    int pageNumber = 0,
    int pageSize = 100,
    String? orderBy,
    String? fields,
    bool? descOrderDirection,
  }) async {
    debugPrint("[TheaterEmployeeRepository] getEventsList");
    try {
      final response = await dio.get(
        '$urlDomen/Events',
        // queryParameters: {
        //   "PageNumber": pageNumber,
        //   "PageSize": pageSize,
        //   "OrderBy": orderBy ?? '',
        //   "DescOrderDirection": descOrderDirection ?? true,
        //   "Fields": fields ?? '',
        // },
      );

      List<AfishaModel> news = [];

      for (var element in response.data) {
        news.add(AfishaModel.fromJson(element));
      }

      return news;
    } catch (e) {
      debugPrint("[TheaterEmployeeRepository] getEventsList !!!!! ERROR $e");
      return [];
    }
  }

  Future<EwentsModel?> getEventsById({
    required int newsId,
  }) async {
    debugPrint("[TheaterEmployeeRepository] getEventsById");
    try {
      final response = await dio.get(
        '$urlDomen/Events/$newsId',
        // queryParameters: {
        //   "PageNumber": pageNumber,
        //   "PageSize": pageSize,
        //   "OrderBy": orderBy ?? '',
        //   "DescOrderDirection": descOrderDirection ?? true,
        //   "Fields": fields ?? '',
        // },
      );

      return EwentsModel.fromJson(response.data);
    } catch (e) {
      debugPrint("[TheaterEmployeeRepository] getEventsById !!!!! ERROR $e");
      return null;
    }
  }
}
