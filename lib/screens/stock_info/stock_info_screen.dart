import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';

class StockInfoScreen extends StatelessWidget {
  final OverviewData overview;

  const StockInfoScreen({required this.overview, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(overview.Symbol ?? '--')));
  }
}
