import 'package:coincapapp/src/models/cripto_model.dart';
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

  ObservableFuture<CriptoModel> criptoFuture;

  @observable
  CriptoModel model;

  ObservableList<DataModel> lista = ObservableList.of([]);


  /// Computed
  @computed
  bool get hasResults => dataList != emptyResponse &&
      dataList.status == FutureStatus.fulfilled;

  @computed
  bool get hasResultsModel => criptoFuture.status == FutureStatus.fulfilled;

  @action
  Future<void> getData() async {
    try {
      final future = _dataRepository.getData();
      dataList = ObservableFuture(future);
      final listaComplete = await dataList;
      lista = ObservableList.of(listaComplete);
    } catch (e) {
    }
  }

  @action
  Future<void> getCriptoData(id) async {
    try {
      final future = _dataRepository.getCriptoData(id);
      criptoFuture = ObservableFuture(future);
      model = await criptoFuture;
    } catch (e) {
    }
  }

}