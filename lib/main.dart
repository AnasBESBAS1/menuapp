import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/views/ProductWidget.dart';
import 'MenuWidget.dart';


void main() {
  GetIt.instance.registerSingleton<MenuRepository>(MenuRepositoryDummyImpl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: StockWidget());
  }
}