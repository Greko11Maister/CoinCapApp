

import 'package:coincapapp/src/api/api_client.dart';
import 'package:coincapapp/src/models/data_model.dart';

class DataRepository {
  final ApiClient _apiClient = ApiClient();

  Future<List<DataModel>> getData() async {
    final String endpoint = 'https://api.coincap.io/v2/assets';
    final res = await _apiClient.get(endpoint);
    print(res['data'][0]);
    return (res['data'] as List).map((e) => DataModel.fromJson(e)).toList();
  }


}