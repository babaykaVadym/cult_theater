import 'dart:core';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ActorRepository {
  static const service = 'Actor';

  final dio = Dio();

  ActorRepository();

  Future<List<Actor>> getActorList({
    int pageNumber = 0,
    int pageSize = 100,
    String? orderBy,
    String? fields,
    bool? descOrderDirection,
  }) async {
    debugPrint("[ActorRepository] getActorList");
    try {
      final response = await dio.get(
        '$urlDomen/TheaterEmployee',
        // queryParameters: {
        //   "PageNumber": pageNumber,
        //   "PageSize": pageSize,
        //   "OrderBy": orderBy ?? '',
        //   "DescOrderDirection": descOrderDirection ?? true,
        //   "Fields": fields ?? '',
        // },
      );

      List<Actor> act = [];

      for (var element in response.data) {
        act.add(Actor.fromJson(element));
      }

      return act;
    } catch (e) {
      debugPrint("[ActorRepository] getActorList !!!!! ERROR $e");
      return [];
    }
  }

  Future<Actor?> getActorById({
    required int actorId,
  }) async {
    debugPrint("[ActorRepository] getActorList");
    try {
      final response = await dio.get(
        '$urlDomen/TheaterEmployee/$actorId',
        // queryParameters: {
        //   "PageNumber": pageNumber,
        //   "PageSize": pageSize,
        //   "OrderBy": orderBy ?? '',
        //   "DescOrderDirection": descOrderDirection ?? true,
        //   "Fields": fields ?? '',
        // },
      );

      return Actor.fromJson(response.data);
    } catch (e) {
      debugPrint("[ActorRepository] getActorList !!!!! ERROR $e");
      return null;
    }
  }
}
