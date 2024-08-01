import 'dart:core';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class EwentTicketsRepository {
  static const service = 'EventTicket';

  final dio = Dio();

  EwentTicketsRepository();

  Future<List<AfishaModel>> getEventsList({
    int pageNumber = 0,
    int pageSize = 100,
    String? orderBy,
    String? fields,
    bool? descOrderDirection,
  }) async {
    debugPrint("[EwentTicketsRepository] getEventsList");
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
      debugPrint("[EwentTicketsRepository] getEventsList !!!!! ERROR $e");
      return [];
    }
  }

  Future<List<EventTicket>?> getEventTicketById({
    required int newsId,
  }) async {
    debugPrint("[EwentTicketsRepository] getEventsById");
    try {
      final response = await dio.get(
        '$urlDomen/$service/$newsId',
      );

      List<EventTicket> news = [];

      for (var element in response.data) {
        news.add(EventTicket.fromJson(element));
      }

      return news;
    } catch (e) {
      debugPrint("[EwentTicketsRepository] getEventsById !!!!! ERROR $e");
      return null;
    }
  }
}
