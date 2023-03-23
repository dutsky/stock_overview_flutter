import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/overview_strings.dart';
import 'package:stock_overview_flutter/domain/entity/overview.dart';

Overview mapOverviewDtoToDomain(OverviewData overviewData) => Overview(
      symbol: overviewData.Symbol ?? OverviewStrings.noData,
      assetType: overviewData.AssetType ?? OverviewStrings.noData,
      name: overviewData.Name ?? OverviewStrings.noData,
      description: overviewData.Description ?? OverviewStrings.noData,
      cik: overviewData.CIK ?? OverviewStrings.noData,
      exchange: overviewData.Exchange ?? OverviewStrings.noData,
      currency: overviewData.Currency ?? OverviewStrings.noData,
      country: overviewData.Country ?? OverviewStrings.noData,
      sector: overviewData.Sector ?? OverviewStrings.noData,
      industry: overviewData.Industry ?? OverviewStrings.noData,
      address: overviewData.Address ?? OverviewStrings.noData,
      fiscalYearEnd: overviewData.FiscalYearEnd ?? OverviewStrings.noData,
      latestQuarter: overviewData.LatestQuarter ?? OverviewStrings.noData,
      marketCapitalization:
          overviewData.MarketCapitalization ?? OverviewStrings.noData,
      ebitda: overviewData.EBITDA ?? OverviewStrings.noData,
      peRatio: overviewData.PERatio ?? OverviewStrings.noData,
      pegRatio: overviewData.PEGRatio ?? OverviewStrings.noData,
      bookValue: overviewData.BookValue ?? OverviewStrings.noData,
      dividendPerShare: overviewData.DividendPerShare ?? OverviewStrings.noData,
      dividendYield: overviewData.DividendYield ?? OverviewStrings.noData,
      eps: overviewData.EPS ?? OverviewStrings.noData,
      revenuePerShareTTM:
          overviewData.RevenuePerShareTTM ?? OverviewStrings.noData,
      profitMargin: overviewData.ProfitMargin ?? OverviewStrings.noData,
      operatingMarginTTM:
          overviewData.OperatingMarginTTM ?? OverviewStrings.noData,
      returnOnAssetsTTM:
          overviewData.ReturnOnAssetsTTM ?? OverviewStrings.noData,
      returnOnEquityTTM:
          overviewData.ReturnOnEquityTTM ?? OverviewStrings.noData,
      revenueTTM: overviewData.RevenueTTM ?? OverviewStrings.noData,
      grossProfitTTM: overviewData.GrossProfitTTM ?? OverviewStrings.noData,
      dilutedEPSTTM: overviewData.DilutedEPSTTM ?? OverviewStrings.noData,
      quarterlyEarningsGrowthYOY:
          overviewData.QuarterlyEarningsGrowthYOY ?? OverviewStrings.noData,
      quarterlyRevenueGrowthYOY:
          overviewData.QuarterlyRevenueGrowthYOY ?? OverviewStrings.noData,
      analystTargetPrice:
          overviewData.AnalystTargetPrice ?? OverviewStrings.noData,
      trailingPE: overviewData.TrailingPE ?? OverviewStrings.noData,
      forwardPE: overviewData.ForwardPE ?? OverviewStrings.noData,
      priceToSalesRatioTTM:
          overviewData.PriceToSalesRatioTTM ?? OverviewStrings.noData,
      priceToBookRatio: overviewData.PriceToBookRatio ?? OverviewStrings.noData,
      evToRevenue: overviewData.EVToRevenue ?? OverviewStrings.noData,
      evToEbitda: overviewData.EVToEBITDA ?? OverviewStrings.noData,
      beta: overviewData.Beta ?? OverviewStrings.noData,
      fiftyTwoWeekHigh: overviewData.FiftyTwoWeekHigh ?? OverviewStrings.noData,
      fiftyTwoWeekLow: overviewData.FiftyTwoWeekLow ?? OverviewStrings.noData,
      fiftyDayMovingAverage:
          overviewData.FiftyDayMovingAverage ?? OverviewStrings.noData,
      twoHundredDayMovingAverage:
          overviewData.TwoHundredDayMovingAverage ?? OverviewStrings.noData,
      sharesOutstanding:
          overviewData.SharesOutstanding ?? OverviewStrings.noData,
      dividendDate: overviewData.DividendDate ?? OverviewStrings.noData,
      exDividendDate: overviewData.ExDividendDate ?? OverviewStrings.noData,
    );
