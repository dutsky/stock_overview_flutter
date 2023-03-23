import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/api/overview_data.dart';
import 'package:stock_overview_flutter/data/repository/overview_repository.dart';
import 'package:stock_overview_flutter/screens/stock_list/widgets/overview_list.dart';

class StockListScreen extends StatefulWidget {
  const StockListScreen({super.key});

  @override
  State<StockListScreen> createState() => _StockListScreenState();
}

class _StockListScreenState extends State<StockListScreen> {
  Future<List<OverviewData>>? overviewList;

  @override
  void initState() {
    super.initState();
    final dio = Dio();
    final api = OverviewApi(dio);
    final repository = OverviewRepository(api);
    overviewList = repository.getOverviewList(['ibm']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stock Overview List')),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        child: Center(
          child: FutureBuilder<List<OverviewData>>(
            future: overviewList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data != null) {
                  return OverviewList(overviewList: snapshot.data!);
                } else {
                  return const Text('Empty');
                }
              } else if (snapshot.hasError) {
                return const Text('Error');
              } else {
                return const CircularProgressIndicator.adaptive();
              }
            },
          ),
        ),
      ),
    );
  }
}
