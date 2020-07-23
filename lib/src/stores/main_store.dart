import 'package:coincapapp/src/models/data_model.dart';
import 'package:coincapapp/src/repositories/data_repository.dart';
import 'package:mobx/mobx.dart';
part 'main_store.g.dart';
class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  DataRepository _dataRepository;

  _MainStore(){
    this._dataRepository = DataRepository();
  }

  static ObservableFuture<List<DataModel>> emptyResponse = ObservableFuture.value([]);

  ObservableFuture<List<DataModel>> dataList = emptyResponse;

  List<DataModel> lista = [];

  @computed
  bool get hasResults => dataList != emptyResponse &&
      dataList.status == FutureStatus.fulfilled;

  @action
  Future getData() async {
    try {
      lista = [];
      final future = _dataRepository.getData();
      dataList = ObservableFuture(future);
      return lista = await dataList;
    } catch (e) {
    }
  }

}