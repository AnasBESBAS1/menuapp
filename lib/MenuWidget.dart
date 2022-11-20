import 'package:flutter/material.dart';
import '../data/products.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/views/ProductWidget.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = GetIt.instance<MenuRepository>().items;
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Menu "),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductWidget(product: products[index]);
          }),

      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',
        ),
            BottomNavigationBarItem(
              icon: Icon(Icons.smart_button),
              label: 'Camera',
            ),
      ]),
    );
  }
}
