// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  Computed<bool> _$hasResultsComputed;

  @override
  bool get hasResults => (_$hasResultsComputed ??=
          Computed<bool>(() => super.hasResults, name: '_MainStore.hasResults'))
      .value;
  Computed<bool> _$hasResultsModelComputed;

  @override
  bool get hasResultsModel =>
      (_$hasResultsModelComputed ??= Computed<bool>(() => super.hasResultsModel,
              name: '_MainStore.hasResultsModel'))
          .value;

  final _$modelAtom = Atom(name: '_MainStore.model');

  @override
  CriptoModel get model {
    _$modelAtom.reportRead();
    return super.model;
  }

  @override
  set model(CriptoModel value) {
    _$modelAtom.reportWrite(value, super.model, () {
      super.model = value;
    });
  }

  final _$getDataAsyncAction = AsyncAction('_MainStore.getData');

  @override
  Future<void> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$getCriptoDataAsyncAction = AsyncAction('_MainStore.getCriptoData');

  @override
  Future<void> getCriptoData(dynamic id) {
    return _$getCriptoDataAsyncAction.run(() => super.getCriptoData(id));
  }

  @override
  String toString() {
    return '''
model: ${model},
hasResults: ${hasResults},
hasResultsModel: ${hasResultsModel}
    ''';
  }
}
