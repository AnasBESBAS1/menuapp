import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/billWidget.dart';
import 'MenuWidget.dart';

void main() {
  GetIt.instance.registerSingleton<MenuRepository>(MenuRepositoryDummyImpl());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Menu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/Menu',
        routes: {
          '/Menu': (context) => const MenuWidget(),
          '/billing': (context) => const BillWidget(),
        });
  }
}
