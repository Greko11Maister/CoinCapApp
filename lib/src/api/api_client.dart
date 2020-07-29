import 'package:dio/dio.dart';
import 'package:coincapapp/src/models/cripto_model.dart';
import 'package:coincapapp/src/models/data_model.dart';

class ApiClient {

  Dio _dio;

  ApiClient(){
    this._dio = Dio();
  }

  Future<List<DataModel>> getData() async {
    final String endpoint = 'https://api.coincap.io/v2/assets';
    Response response = await _dio.get(endpoint);
    final res = response.data;
    return (res['data'] as List).map((e) => DataModel.fromJson(e)).toList();
  }

  
  Future<CriptoModel> getCriptoData(id) async {
    final String endpoint = 'https://api.coincap.io/v2/assets/$id';
    Response response = await _dio.get(endpoint);
    final res = response.data;
    return CriptoModel.fromJson(res['data']);
  }

}