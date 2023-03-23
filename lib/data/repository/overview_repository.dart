import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/function_name.dart';

const _apiKey = 'demo';

class OverviewRepository {
  final OverviewApi _api;

  OverviewRepository(this._api);

  Future<OverviewData> getOverview(String company) async => _api.getOverview(
        FunctionName.overview.value,
        company.toUpperCase(),
        _apiKey,
      );
}
