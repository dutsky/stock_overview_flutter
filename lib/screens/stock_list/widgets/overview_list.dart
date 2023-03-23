import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/screens/stock_info/stock_info_screen.dart';
import 'package:stock_overview_flutter/screens/stock_list/widgets/overview_brief_tile.dart';

/// Список компаний.
class OverviewList extends StatelessWidget {
  final List<OverviewData> overviewList;

  const OverviewList({
    required this.overviewList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: overviewList.length,
      itemBuilder: (context, index) {
        final company = overviewList[index];
        return OverviewBriefTile(
          name: company.Name ?? '--',
          capitalization: company.MarketCapitalization ?? '--',
          onTap: () => _onTap(context, company),
        );
      },
    );
  }

  void _onTap(BuildContext context, OverviewData company) =>
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => StockInfoScreen(overview: company)),
      );
}
