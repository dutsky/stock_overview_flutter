import 'package:stock_overview_flutter/app_constants.dart';
import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/function_name.dart';
import 'package:stock_overview_flutter/data/mappers/overview_mapper.dart';
import 'package:stock_overview_flutter/domain/entity/overview.dart';

/// Репозиторий для работы с API
class OverviewRepository {
  final OverviewApi _api;

  const OverviewRepository(this._api);

  Future<Overview> getOverview(String company) async {
    final dto = await _api.getOverview(
      FunctionName.overview.value,
      company.toUpperCase(),
      AppConstants.apiKey,
    );
    return mapOverviewDtoToDomain(dto);
  }

  Future<List<Overview>> getOverviewList(
    Iterable<String> companies,
  ) async =>
      Future.wait(
        companies.map((company) => getOverview(company)),
      );
}
