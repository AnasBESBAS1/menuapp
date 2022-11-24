import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/addition_repository.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/views/ProductWidget.dart';
import 'package:menu_app/views/FooterWidget.dart';

class MenuWid extends StatefulWidget {
  const MenuWid({super.key});

  @override
  State<MenuWid> createState() => MenuWidget();
}

class MenuWidget extends State<MenuWid> {
  @override
  Widget build(BuildContext context) {
    final products = GetIt.instance<MenuRepository>().items;
    var addition = GetIt.instance<AdditionRepository>().item;

    return Scaffold(
      appBar: AppBar(
        title: const Text(" Menu "),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: products.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == products.length) {
              return FooterWidget(addition: addition);
            }
            return MyStatefulWidget(
              product: products[index],
              addition: addition,
            );
          }),
    );
  }
}
