import 'package:stock_overview_flutter/app_constants.dart';
import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/function_name.dart';

/// Репозиторий для работы с API
class OverviewRepository {
  final OverviewApi _api;

  const OverviewRepository(this._api);

  Future<OverviewData> getOverview(String company) async => _api.getOverview(
        FunctionName.overview.value,
        company.toUpperCase(),
        AppConstants.apiKey,
      );

  Future<List<OverviewData>> getOverviewList(
    Iterable<String> companies,
  ) async =>
      Future.wait(
        companies.map((company) => getOverview(company)),
      );
}
