import 'dart:io';
import 'package:dio/dio.dart';
import 'package:note_with/datas/custom_exceptions/cust_ex.dart';
import 'package:note_with/datas/custom_exceptions/unauth.dart';
import '../../app_tools/urlconst.dart';
import '../models/base_models/base_service_model.dart';
import '../models/base_models/result.dart';

class BaseService {
  static BaseService? _instance;
  static BaseService? get instance {
    _instance ??= BaseService._init();
    return _instance;
  }

  Dio? _dio;
  BaseService._init() {
    final baseOptions = BaseOptions(baseUrl: UrlCost.baseUrl + "/api" //
        );
    _dio = Dio(baseOptions);
  }

  Future<Result> dioPost<T extends BaseServiceModel>(
      String path, T model, dynamic data,
      {String? token}) async {
    try {
      final response = await _dio!.post(path,
          data: data,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      return _prePareResult(response, model);
    } catch (e) {
      rethrow;
    }
  }

  Future<Result> dioPut<T extends BaseServiceModel>(
      String path, T model, dynamic data,
      {String? token}) async {
    try {
      final response = await _dio!.put(path,
          data: data,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      return _prePareResult(response, model);
    } catch (e) {
      rethrow;
    }
  }

  Future<Result> dioDelete<T extends BaseServiceModel>(String path, T model,
      {Map<String, dynamic>? params, String token = ""}) async {
    try {
      final response = await _dio?.delete(path,
          queryParameters: params,
          options: Options(headers: {"AppKey": token}));

      return _prePareResult<T>(response, model);
    } catch (e) {
      rethrow;
    }
  }

  Future<Result> dioGet<T extends BaseServiceModel>(String path, T model,
      {Map<String, dynamic>? params, String token = ""}) async {
    try {
      final response = await _dio?.get(path,
          queryParameters: params,
          options: Options(headers: {"AppKey": token}));

      return _prePareResult<T>(response, model);
    } catch (e) {
      rethrow;
    }
  }

  Result _prePareResult<T extends BaseServiceModel>(
      Response? response, T model) {
    try {
      if (response == null) {
        throw CustEx();
      }
      switch (response.statusCode) {
        case HttpStatus.unauthorized:
          throw UnAuth();
        case HttpStatus.notFound:
          throw CustEx(message: "Nesne Bulunamadı");
        case HttpStatus.badRequest:
          throw CustEx(message: response.data); //test edilecek
      }
      if (response.statusCode != 200) {
        throw CustEx();
      }
      return _prePareTypeData<T>(response, model);
    } catch (e) {
      rethrow;
    }
  }

  _prePareTypeData<T extends BaseServiceModel>(Response response, T model) {
    try {
      var result = Result();
      var data = response.data;
      result.message = data["message"].toString();
      result.pageCount = data["pageCount"];
      result.pageSize = data["pageSize"];
      var body = data["data"];
      if (body != null) {
        result.data = _prePareData<T>(body, model);
      }
      return result;
    } catch (e) {
      rethrow;
    }
  }

  _prePareData<T extends BaseServiceModel>(body, T model) {
    try {
      if (body is List) {
        return body.map((e) => model.fromMap(e)).cast<T>().toList();
      } else {
        T fechData = model.fromMap(body);
        return fechData;
      }
    } catch (e) {
      rethrow;
    }
  }
}
