import 'package:stock_overview_flutter/domain/service/overview_service.dart';

/// Зависимости уровня приложения.
class AppScope {
  final OverviewService overviewService;

  const AppScope(this.overviewService);
}
