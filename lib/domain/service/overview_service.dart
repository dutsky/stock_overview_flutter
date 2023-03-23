import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/repository/overview_repository.dart';
import 'package:stock_overview_flutter/domain/entity/list_state.dart';

/// Сервис для работы с Overview
class OverviewService implements IOverviewService {
  final OverviewRepository _repository;

  @override
  final ValueNotifier<List<OverviewData>> overviewList = ValueNotifier([]);

  @override
  final ValueNotifier<ListState> overviewListState =
      ValueNotifier(ListState.loading);

  OverviewService(this._repository) {
    _init();
  }

  Future<List<OverviewData>> getCompanies(List<String> companies) async {
    return _repository.getOverviewList(companies);
  }

  Future<void> _init() async {
    const channel = MethodChannel('stock_overview_channel_android_client');
    channel.setMethodCallHandler((call) {
      switch (call.method) {
        case 'passStockNames':
          return _processPassStockName(call);
        default:
          throw PlatformException(code: 'unimplemented');
      }
    });
  }

  Future<void> _processPassStockName(MethodCall call) async {
    final arg = call.arguments as String;
    try {
      overviewListState.value = ListState.loading;
      final stockNames = _parseStockNames(arg);
      overviewList.value = await _repository.getOverviewList(stockNames);
      overviewListState.value = ListState.data;
    } on Exception {
      overviewListState.value = ListState.error;
    }
  }

  Iterable<String> _parseStockNames(String rawStockNames) {
    return rawStockNames.split(',').map((e) => e.trim());
  }
}

/// Интерфейс сервиса для работы с Overview.
abstract class IOverviewService {
  /// Список компаний.
  ValueListenable get overviewList;

  /// Стейт списка компаний.
  ValueListenable get overviewListState;
}
