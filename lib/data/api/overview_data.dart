// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'overview_data.g.dart';

@JsonSerializable()
class OverviewData {
  final String? Symbol;
  final String? AssetType;
  final String? Name;
  final String? Description;
  final String? CIK;
  final String? Exchange;
  final String? Currency;
  final String? Country;
  final String? Sector;
  final String? Industry;
  final String? Address;
  final String? FiscalYearEnd;
  final String? LatestQuarter;
  final String? MarketCapitalization;
  final String? EBITDA;
  final String? PERatio;
  final String? PEGRatio;
  final String? BookValue;
  final String? DividendPerShare;
  final String? DividendYield;
  final String? EPS;
  final String? RevenuePerShareTTM;
  final String? ProfitMargin;
  final String? OperatingMarginTTM;
  final String? ReturnOnAssetsTTM;
  final String? ReturnOnEquityTTM;
  final String? RevenueTTM;
  final String? GrossProfitTTM;
  final String? DilutedEPSTTM;
  final String? QuarterlyEarningsGrowthYOY;
  final String? QuarterlyRevenueGrowthYOY;
  final String? AnalystTargetPrice;
  final String? TrailingPE;
  final String? ForwardPE;
  final String? PriceToSalesRatioTTM;
  final String? PriceToBookRatio;
  final String? EVToRevenue;
  final String? EVToEBITDA;
  final String? Beta;
  @JsonKey(name: '52WeekHigh')
  final String? FiftyTwoWeekHigh;
  @JsonKey(name: '52WeekLow')
  final String? FiftyTwoWeekLow;
  @JsonKey(name: '50DayMovingAverage')
  final String? FiftyDayMovingAverage;
  @JsonKey(name: '200DayMovingAverage')
  final String? TwoHundredDayMovingAverage;
  final String? SharesOutstanding;
  final String? DividendDate;
  final String? ExDividendDate;

  const OverviewData(
      this.Symbol,
      this.AssetType,
      this.Name,
      this.Description,
      this.CIK,
      this.Exchange,
      this.Currency,
      this.Country,
      this.Sector,
      this.Industry,
      this.Address,
      this.FiscalYearEnd,
      this.LatestQuarter,
      this.MarketCapitalization,
      this.EBITDA,
      this.PERatio,
      this.PEGRatio,
      this.BookValue,
      this.DividendPerShare,
      this.DividendYield,
      this.EPS,
      this.RevenuePerShareTTM,
      this.ProfitMargin,
      this.OperatingMarginTTM,
      this.ReturnOnAssetsTTM,
      this.ReturnOnEquityTTM,
      this.RevenueTTM,
      this.GrossProfitTTM,
      this.DilutedEPSTTM,
      this.QuarterlyEarningsGrowthYOY,
      this.QuarterlyRevenueGrowthYOY,
      this.AnalystTargetPrice,
      this.TrailingPE,
      this.ForwardPE,
      this.PriceToSalesRatioTTM,
      this.PriceToBookRatio,
      this.EVToRevenue,
      this.EVToEBITDA,
      this.Beta,
      this.FiftyTwoWeekHigh,
      this.FiftyTwoWeekLow,
      this.FiftyDayMovingAverage,
      this.TwoHundredDayMovingAverage,
      this.SharesOutstanding,
      this.DividendDate,
      this.ExDividendDate);

  factory OverviewData.fromJson(Map<String, dynamic> json) =>
      _$OverviewDataFromJson(json);

  Map<String, dynamic> toJson() => _$OverviewDataToJson(this);
}
