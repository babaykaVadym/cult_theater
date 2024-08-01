import 'dart:core';
import 'dart:io';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AccountRepository {
  static const service = 'Account';

  final dio = Dio();

  AccountRepository();

  ///api/Account/updateResetedPassword
  Future<List<Actor>> updateResetedPassword({
    required String token,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    debugPrint("[AccountRepository] updateResetedPassword");
    try {
      final response = await dio.put(
        '$urlDomen/$service/updateResetedPassword',
        data: {
          "token": token,
          "newPassword": newPassword,
          "confirmNewPassword": confirmNewPassword,
        },
      );

      List<Actor> act = [];

      for (var element in response.data) {
        act.add(Actor.fromJson(element));
      }

      return act;
    } catch (e) {
      debugPrint("[AccountRepository] updateResetedPassword !!!!! ERROR $e");
      return [];
    }
  }

  ////api/Account/changePassword
  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    debugPrint("[AccountRepository] changePassword");
    try {
      final response = await dio.put(
        '$urlDomen/$service/changePassword',
        data: {
          "currentPassword": currentPassword,
          "newPassword": newPassword,
          "confirmNewPassword": confirmNewPassword,
        },
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${AppHelper.token}"
          },
        ),
      );
    } on DioException catch (e) {
      debugPrint(
          "[AccountRepository] changePassword DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AccountRepository] changePassword !!!!! ERROR $e");
      throw Exception();
    }
  }

  // /api/Account/resetPassword

  Future<void> resetPassword({
    required String email,
  }) async {
    debugPrint("[AccountRepository] resetPassword");
    try {
      await dio.post(
        '$urlDomen/$service/resetPassword',
        data: {
          "email": email,
        },
      );
    } on DioException catch (e) {
      debugPrint(
          "[AccountRepository] resetPassword DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[GmailRepository] addOrAuthorizeCompanyEmail  !!!!ERROR $e");

      throw Exception();
    }
  }

  ///api/Account/profile
  Future<User> profile() async {
    debugPrint("[AccountRepository] profile");
    try {
      final result = await dio.get(
        '$urlDomen/$service/profile',
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer ${AppHelper.token}',
            // 'content-Type': 'application/json'
          },
        ),
      );

      return User.fromJson(result.data);
    } on DioException catch (e) {
      debugPrint("[AccountRepository] profile DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AccountRepository] profile !!!!! ERROR $e");
      throw Exception();
    }
  }

  ///api/Account/profile
  Future<void> updateProfile({
    required String usrName,
    required String usrEmail,
    required String usrPhone,
    required int usrId,
  }) async {
    debugPrint("[AccountRepository] updateProfile");
    try {
      final result = await dio.put(
        '$urlDomen/$service/profile',
        data: {
          "usrId": usrId,
          "usrName": usrName,
          "usrEmail": usrEmail,
          "usrPhone": usrPhone,
        },
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer ${AppHelper.token}',
            // 'content-Type': 'application/json'
          },
        ),
      );
    } on DioException catch (e) {
      debugPrint(
          "[AccountRepository] updateProfile DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AccountRepository] updateProfile !!!!! ERROR $e");
    }
  }
}
