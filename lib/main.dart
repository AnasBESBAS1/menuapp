import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/addition_repository.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/views/BillingWidget.dart';
import 'views/MenuWidget.dart';

void main() {
  GetIt.instance.registerSingleton<MenuRepository>(MenuRepositoryDummyImpl());
  GetIt.instance.registerSingleton<AdditionRepository>(AdditionRepositoryDummyImpl());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget  {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var addition = GetIt.instance<AdditionRepository>().item;

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
          '/Menu': (context) =>  MenuWid(),
          '/billing': (context) =>  BillWidget(addition: addition,),
        });
  }
}
