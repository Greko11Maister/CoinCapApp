import 'package:coincapapp/src/api/api_client.dart';
import 'package:coincapapp/src/models/data_model.dart';

class DataRepository {
  final ApiClient _apiClient;

  DataRepository(this._apiClient);

  final String api = 'http://api.coincap.io/v2/';

  Future<DataModel> getData() async {
    final String endpoint = '$api/assets';
    final res = await _apiClient.get(endpoint);
    final data = DataModel.fromJson(res);
    print(data);
    return data;
  }


}