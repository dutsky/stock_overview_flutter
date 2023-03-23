import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_overview_flutter/app_scope.dart';
import 'package:stock_overview_flutter/screens/stock_list/stock_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // `LayoutBuilder` установлен на случай предварительной загрузки
    // FlutterEngine.
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth == 0.0 && constraints.maxHeight == 0.0) {
          return const SizedBox.shrink();
        } else {
          final appScope = context.read<AppScope>();
          return MaterialApp(
            home: StockListScreen(
              service: appScope.overviewService,
            ),
          );
        }
      },
    );
  }
}
