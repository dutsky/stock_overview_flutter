import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/data/overview_strings.dart';

/// Плитка с короткой информации о товаре.
class OverviewBriefTile extends StatelessWidget {
  final String name;
  final String capitalization;
  final VoidCallback onTap;

  const OverviewBriefTile({
    required this.name,
    required this.capitalization,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${OverviewStrings.name}: $name'),
      subtitle: Text('${OverviewStrings.capitalization}: $capitalization'),
      onTap: onTap,
    );
  }
}
