import 'dart:core';
import 'dart:io';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  static const service = 'Auth';

  final dio = Dio();

  AuthRepository();

  Future<LoginData?> login({
    String? email,
    String? password,
  }) async {
    debugPrint("[AuthRepository] login");
    try {
      final response = await dio.post('$urlDomen/Auth/login', data: {
        "login": email,
        "password": password,
      });

      return LoginData.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint("[AuthRepository] login DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AuthRepository] login  !!!!ERROR $e");

      throw Exception();
    }
  }

  ///api/Auth/autologin

  Future<LoginData?> autoLogin({
    String? token,
  }) async {
    debugPrint("[AuthRepository] autoLogin");
    try {
      final response = await dio.post(
        '$urlDomen/Auth/autologin',
        data: {
          "token": token,
        },
        options: Options(
          headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        ),
      );

      return LoginData.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint("[AuthRepository] autoLogin DioException !!!!! ERROR 1 $e ");

      throw Exception(e);
    } catch (e) {
      debugPrint("[AuthRepository] autoLogin  !!!!ERROR $e");

      throw Exception();
    }
  }

  Future<LoginData?> refreshAuth({
    String? token,
    String? refreshToken,
  }) async {
    debugPrint("[AuthRepository] refreshAuth  $token");
    try {
      final response = await dio.post(
        '$urlDomen/Auth/refresh',
        data: {
          "refreshToken": refreshToken,
          "token": token,
        },
        options: Options(
          headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        ),
      );

      return LoginData.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint("[AuthRepository] refreshAuth DioException !!!!! ERROR $e");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AuthRepository] refreshAuth  !!!!ERROR $e");

      throw Exception();
    }
  }

  ///api/Auth/register
  ///

  Future<LoginData?> registerAuth({
    required String usrEmail,
    required String usrPhone,
    required String usrPassword,
    required String usrPasswordConfirm,
  }) async {
    debugPrint("[AuthRepository] registerAuth  ");
    try {
      final response = await dio.post(
        '$urlDomen/Auth/register',
        data: {
          "usrEmail": usrEmail,
          "usrPhone": usrPhone,
          "usrPassword": usrPassword,
          "usrPasswordConfirm": usrPasswordConfirm,
        },
      );

      return LoginData.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint("[AuthRepository] registerAuth DioException !!!!! ERROR $e ");
      throw Exception(e);
    } catch (e) {
      debugPrint("[AuthRepository] registerAuth  !!!!ERROR $e");

      throw Exception();
    }
  }
}
