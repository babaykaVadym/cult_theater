import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';

class EwentsRepository {
  static const service = 'News';

  final dio = Dio();

  EwentsRepository();

  Future<List<AfishaModel>?> getEventsList({
    required int pageNumber,
    required int pageSize,
  }) async {
    debugPrint("[EwentsRepository] getEventsList $pageSize");
    try {
      final response = await dio.get(
        '$urlDomen/Events',
        queryParameters: {
          "pageNumber": pageNumber,
          "pageSize": pageSize,
        },
      );

      List<AfishaModel> news = [];

      for (var element in response.data) {
        news.add(AfishaModel.fromJson(element));
      }

      return news;
    } on DioException catch (e) {
      debugPrint(
          "[EwentsRepository] getEventsList DioException !!!!! ERROR 1 $e");

      throw Exception(e);
    } catch (e) {
      debugPrint("[EwentsRepository] getEventsList  !!!!ERROR $e");

      throw Exception();
    }
  }

  Future<AfishaModel?> getEventsById({
    required int newsId,
  }) async {
    debugPrint("[EwentsRepository] getEventsById");
    try {
      final response = await dio.get(
        '$urlDomen/Events/$newsId',
      );

      return AfishaModel.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint(
          "[EwentsRepository] getEventsById DioException !!!!! ERROR 1 $e");

      throw Exception(e);
    } catch (e) {
      debugPrint("[EwentsRepository] getEventsById  !!!!ERROR $e");

      throw Exception();
    }
  }
}
