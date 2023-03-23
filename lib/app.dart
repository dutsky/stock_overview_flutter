import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/screens/stock_list/stock_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StockListScreen());
  }
}
