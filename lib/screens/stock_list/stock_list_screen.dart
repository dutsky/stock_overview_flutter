import 'package:flutter/material.dart';
import 'package:stock_overview_flutter/data/overview_strings.dart';
import 'package:stock_overview_flutter/domain/entity/list_state.dart';
import 'package:stock_overview_flutter/domain/service/overview_service.dart';
import 'package:stock_overview_flutter/screens/stock_list/widgets/overview_list.dart';

/// Экран списка компаний.
class StockListScreen extends StatelessWidget {
  final OverviewService service;

  const StockListScreen({required this.service, super.key});

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
          child: ValueListenableBuilder<ListState>(
            valueListenable: service.overviewListState,
            builder: (_, state, __) {
              if (state == ListState.data) {
                return service.overviewList.value.isEmpty
                    ? const Text(
                        OverviewStrings.emptyMessage,
                        textAlign: TextAlign.center,
                      )
                    : OverviewList(overviewList: service.overviewList.value);
              } else if (state == ListState.error) {
                return const Text(
                  OverviewStrings.errorMessage,
                  textAlign: TextAlign.center,
                );
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
