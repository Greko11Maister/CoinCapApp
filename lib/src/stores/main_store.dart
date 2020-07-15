import 'package:coincapapp/src/models/data_model.dart';
import 'package:coincapapp/src/repositories/data_repository.dart';
import 'package:mobx/mobx.dart';
part 'main_store.g.dart';
class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  DataRepository _dataRepository;

  _MainStore(DataRepository _dataRepository): this._dataRepository = _dataRepository;

  ObservableList<Map> dataList = ObservableList.of([]);

  @action
  Future<void> getData() async {
    final data = await _dataRepository.getData();
    print(data);
    // dataList = ObservableList.of(data);
  }

}