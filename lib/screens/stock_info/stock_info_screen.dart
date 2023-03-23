import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/domain/entity/overview.dart';

/// Экран детальной информации о компании.
class StockInfoScreen extends StatelessWidget {
  final Overview overview;

  const StockInfoScreen({required this.overview, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(overview.symbol)),
      body: ListView(
        children: [
          ListTile(subtitle: Text(overview.assetType)),
        ],
      ),
    );
  }
}
