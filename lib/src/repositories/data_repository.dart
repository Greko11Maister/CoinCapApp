import 'package:coincapapp/src/api/api_client.dart';
import 'package:coincapapp/src/models/cripto_model.dart';
import 'package:coincapapp/src/models/data_model.dart';


class DataRepository {
  final ApiClient _apiClient = ApiClient();

  Future<List<DataModel>> getData() async {
    return _apiClient.getData();
  }
  
  Future<CriptoModel> getCriptoData(id) async {
    return _apiClient.getCriptoData(id);
  }


}