import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_overview_flutter/app.dart';
import 'package:stock_overview_flutter/data/api/overview_api.dart';
import 'package:stock_overview_flutter/data/repository/overview_repository.dart';
import 'package:stock_overview_flutter/domain/service/overview_service.dart';
import 'package:stock_overview_flutter/app_scope.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final service = _initService();

  runApp(
    Provider(
      create: (_) => AppScope(service),
      child: const MyApp(),
    ),
  );
}

OverviewService _initService() {
  final dio = Dio();
  final api = OverviewApi(dio);
  final repo = OverviewRepository(api);
  return OverviewService(repo);
}
