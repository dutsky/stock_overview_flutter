import 'package:flutter/material.dart';

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
      title: Text('Название: $name'),
      subtitle: Text('Капитализация: $capitalization'),
      onTap: onTap,
    );
  }
}
