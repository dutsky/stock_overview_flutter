import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';

part 'overview_api.g.dart';

@RestApi(baseUrl: "https://www.alphavantage.co")
abstract class OverviewApi {
  factory OverviewApi(Dio dio, {String baseUrl}) = _OverviewApi;

  @GET("/query")
  Future<OverviewData> getOverview(
    @Query('function') String function,
    @Query('symbol') String symbol,
    @Query('apikey') String apikey,
  );
}
