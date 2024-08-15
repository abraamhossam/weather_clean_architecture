import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = "https://api.openweathermap.org/data/2.5/";

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
