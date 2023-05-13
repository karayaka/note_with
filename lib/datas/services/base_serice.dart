import 'package:dio/dio.dart';

import '../../app_tools/urlconst.dart';

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
}
