import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/domain/entity/overview.dart';

/// Экран детальной информации о компании.
class StockInfoScreen extends StatefulWidget {
  final Overview overview;

  const StockInfoScreen({required this.overview, super.key});

  @override
  State<StockInfoScreen> createState() => _StockInfoScreenState();
}

class _StockInfoScreenState extends State<StockInfoScreen> {
  final tiles = <Widget>[];

  @override
  void initState() {
    super.initState();
    tiles.addAll(
      [
        ListTile(
          title: const Text('assetType'),
          subtitle: Text(widget.overview.assetType),
        ),
        ListTile(
          title: const Text('name'),
          subtitle: Text(widget.overview.name),
        ),
        ListTile(
          title: const Text('description'),
          subtitle: Text(widget.overview.description),
        ),
        ListTile(
          title: const Text('cik'),
          subtitle: Text(widget.overview.cik),
        ),
        ListTile(
          title: const Text('exchange'),
          subtitle: Text(widget.overview.exchange),
        ),
        ListTile(
          title: const Text('currency'),
          subtitle: Text(widget.overview.currency),
        ),
        ListTile(
          title: const Text('country'),
          subtitle: Text(widget.overview.country),
        ),
        ListTile(
          title: const Text('sector'),
          subtitle: Text(widget.overview.sector),
        ),
        ListTile(
          title: const Text('industry'),
          subtitle: Text(widget.overview.industry),
        ),
        ListTile(
          title: const Text('address'),
          subtitle: Text(widget.overview.address),
        ),
        ListTile(
          title: const Text('fiscalYearEnd'),
          subtitle: Text(widget.overview.fiscalYearEnd),
        ),
        ListTile(
          title: const Text('latestQuarter'),
          subtitle: Text(widget.overview.latestQuarter),
        ),
        ListTile(
          title: const Text('marketCapitalization'),
          subtitle: Text(widget.overview.marketCapitalization),
        ),
        ListTile(
          title: const Text('ebitda'),
          subtitle: Text(widget.overview.ebitda),
        ),
        ListTile(
          title: const Text('peRatio'),
          subtitle: Text(widget.overview.peRatio),
        ),
        ListTile(
          title: const Text('pegRatio'),
          subtitle: Text(widget.overview.pegRatio),
        ),
        ListTile(
          title: const Text('bookValue'),
          subtitle: Text(widget.overview.bookValue),
        ),
        ListTile(
          title: const Text('dividendPerShare'),
          subtitle: Text(widget.overview.dividendPerShare),
        ),
        ListTile(
          title: const Text('dividendYield'),
          subtitle: Text(widget.overview.dividendYield),
        ),
        ListTile(
          title: const Text('eps'),
          subtitle: Text(widget.overview.eps),
        ),
        ListTile(
          title: const Text('revenuePerShareTTM'),
          subtitle: Text(widget.overview.revenuePerShareTTM),
        ),
        ListTile(
          title: const Text('profitMargin'),
          subtitle: Text(widget.overview.profitMargin),
        ),
        ListTile(
          title: const Text('operatingMarginTTM'),
          subtitle: Text(widget.overview.operatingMarginTTM),
        ),
        ListTile(
          title: const Text('returnOnAssetsTTM'),
          subtitle: Text(widget.overview.returnOnAssetsTTM),
        ),
        ListTile(
          title: const Text('returnOnEquityTTM'),
          subtitle: Text(widget.overview.returnOnEquityTTM),
        ),
        ListTile(
          title: const Text('revenueTTM'),
          subtitle: Text(widget.overview.revenueTTM),
        ),
        ListTile(
          title: const Text('grossProfitTTM'),
          subtitle: Text(widget.overview.grossProfitTTM),
        ),
        ListTile(
          title: const Text('dilutedEPSTTM'),
          subtitle: Text(widget.overview.dilutedEPSTTM),
        ),
        ListTile(
          title: const Text('quarterlyEarningsGrowthYOY'),
          subtitle: Text(widget.overview.quarterlyEarningsGrowthYOY),
        ),
        ListTile(
          title: const Text('quarterlyRevenueGrowthYOY'),
          subtitle: Text(widget.overview.quarterlyRevenueGrowthYOY),
        ),
        ListTile(
          title: const Text('analystTargetPrice'),
          subtitle: Text(widget.overview.analystTargetPrice),
        ),
        ListTile(
          title: const Text('trailingPE'),
          subtitle: Text(widget.overview.trailingPE),
        ),
        ListTile(
          title: const Text('forwardPE'),
          subtitle: Text(widget.overview.forwardPE),
        ),
        ListTile(
          title: const Text('priceToSalesRatioTTM'),
          subtitle: Text(widget.overview.priceToSalesRatioTTM),
        ),
        ListTile(
          title: const Text('priceToBookRatio'),
          subtitle: Text(widget.overview.priceToBookRatio),
        ),
        ListTile(
          title: const Text('evToRevenue'),
          subtitle: Text(widget.overview.evToRevenue),
        ),
        ListTile(
          title: const Text('evToEbitda'),
          subtitle: Text(widget.overview.evToEbitda),
        ),
        ListTile(
          title: const Text('beta'),
          subtitle: Text(widget.overview.beta),
        ),
        ListTile(
          title: const Text('fiftyTwoWeekHigh'),
          subtitle: Text(widget.overview.fiftyTwoWeekHigh),
        ),
        ListTile(
          title: const Text('fiftyTwoWeekLow'),
          subtitle: Text(widget.overview.fiftyTwoWeekLow),
        ),
        ListTile(
          title: const Text('fiftyDayMovingAverage'),
          subtitle: Text(widget.overview.fiftyDayMovingAverage),
        ),
        ListTile(
          title: const Text('twoHundredDayMovingAverage'),
          subtitle: Text(widget.overview.twoHundredDayMovingAverage),
        ),
        ListTile(
          title: const Text('sharesOutstanding'),
          subtitle: Text(widget.overview.sharesOutstanding),
        ),
        ListTile(
          title: const Text('dividendDate'),
          subtitle: Text(widget.overview.dividendDate),
        ),
        ListTile(
          title: const Text('exDividendDate'),
          subtitle: Text(widget.overview.exDividendDate),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.overview.symbol),
      ),
      body: ListView.builder(
          itemCount: tiles.length, itemBuilder: (_, index) => tiles[index]),
    );
  }
}
