import 'dart:core';
import 'dart:io';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class OrderRepository {
  static const service = 'Order';

  final dio = Dio();

  OrderRepository();

  Dio createDio({required String baseUrl, bool trustSelfSigned = false}) {
    // initialize dio
    final dio = Dio()..options.baseUrl = baseUrl;

    // allow self-signed certificate
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback = (cert, host, port) => trustSelfSigned;
      return client;
    };

    return dio;
  }

  Future<OrderByModel?> byTiket({
    required String email,
    required String ordUserPhone,
    required List<EventTicket> tikets,
  }) async {
    debugPrint("[OrderRepository] byTiket");
    try {
      final data = tikets.map((e) => e.etId).toList();

      final datas =
          await createDio(baseUrl: urlDomen, trustSelfSigned: true).post(
        '/$service',
        data: {
          "ordUserEmail": email,
          "ordUserPhone": ordUserPhone,
          "ordEventTicketIds": data,
        },
      );

      // final response = await dio.post('$urlDomen/$service', data: {
      //   "ordUserEmail": email,
      //   "ordEventTicketIds": data,
      //
      // },
      //
      //
      //
      // );
      debugPrint("response.data  !!! ${datas.data}");

      return OrderByModel.fromJson(datas.data);
    } on DioException catch (e) {
      debugPrint(
          "[OrderRepository] byTiket !!!!!  DioExceptionERROR ${e.message}");
      //   return null;\

      throw Exception();
    } catch (e) {
      debugPrint("[OrderRepository] byTiket !!!!! ERROR $e");
      //   return null;
      throw Exception();
    }
  }

  Future<List<TicketModel>?> getOrderList({
    required int page,
    required int itemCount,
  }) async {
    debugPrint("[OrderRepository] byTiket");
    try {
      final response = await dio.get(
        '$urlDomen/$service/list',
        queryParameters: {
          "PageNumber": page,
          "PageSize": itemCount,
          // "OrderBy": '',
          // "DescOrderDirection": false,
          // "Fields": '',
        },
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: "Bearer ${AppHelper.token}"
          },
        ),
      );

      List<TicketModel> news = [];

      for (var element in response.data) {
        try {
          news.add(TicketModel.fromJson(element));
        } catch (e) {
          //
          //  print("!!!!!!!!!!!! $e");
        }
      }

      return news;
    } on DioException catch (e) {
      debugPrint("[OrderRepository] byTiket !!!!! ERROR ${e.message}");
      //   return null;\

      throw Exception();
    } catch (e) {
      debugPrint("[OrderRepository] byTiket !!!!! ERROR $e");
      //   return null;
      throw Exception();
    }
  }

  Future<void> getOrderPdfById({
    required int id,
    required String name,
  }) async {
    debugPrint("[OrderRepository] getOrderPdfById");
    try {
      Directory? directory = Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();
      final fullPath =
          '${directory?.path}/NewDirectory'; //create new directory here

      Directory(fullPath).createSync(recursive: true);

      File saveFile = File("$fullPath/$name.pdf");

      // String path = await _getPath("$name.pdf");
      // var dio = Dio();
      String fileUrl = '$urlDomen/$service/pdf/$id';
      dio.options.headers['Content-Type'] = 'application/json';
      dio.options.headers[HttpHeaders.authorizationHeader] =
          "Bearer ${AppHelper.token}";

      await dio.download(fileUrl, saveFile.path,
          onReceiveProgress: (received, total) {
        int progress = (((received / total) * 100).toInt());

        if (progress >= 100) {
          final url = saveFile.path;

          try {
            OpenFile.open(saveFile.path);
          } catch (e) {
            // print("EEEEEEEEE OpenFile $e");
          }
        }
      }).then((value) => OpenFile.open(saveFile.path));
    } on DioException catch (e) {
      debugPrint("[OrderRepository] getOrderPdfById !!!!! ERROR $e ");
      //   return null;\

      throw Exception();
    } catch (e) {
      debugPrint("[OrderRepository] getOrderPdfById !!!!! ERROR $e");
      //   return null;
      throw Exception();
    }
  }

  Future<String> _getPath(String filename) async {
    String directory;
    if (Platform.isIOS) {
      directory = (await getDownloadsDirectory())?.path ??
          (await getTemporaryDirectory()).path;
    } else {
      var status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        status = await Permission.storage.request();
      }
      directory = '/storage/emulated/0/Download/';
      var dirDownloadExists = true;
      dirDownloadExists = await Directory(directory).exists();
      if (!dirDownloadExists) {
        directory = '/storage/emulated/0/Downloads/';
        dirDownloadExists = await Directory(directory).exists();
        if (!dirDownloadExists) {
          directory = (await getTemporaryDirectory()).path;
        }
      }
    }
    return directory + filename;
  }
}
