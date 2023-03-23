import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/function_name.dart';

const _apiKey = 'demo';

class OverviewRepository {
  final OverviewApi _api;

  const OverviewRepository(this._api);

  Future<OverviewData> getOverview(String company) async => _api.getOverview(
        FunctionName.overview.value,
        company.toUpperCase(),
        _apiKey,
      );

  Future<List<OverviewData>> getOverviewList(List<String> companies) async =>
      Future.wait(
        companies.map((company) => getOverview(company)),
      );
}
