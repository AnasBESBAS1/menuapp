import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:menu_app/repository/menu_repository.dart';
import 'package:menu_app/views/ProductWidget.dart';
import 'package:menu_app/views/FooterWidget.dart';



class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = GetIt.instance<MenuRepository>().items;
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Menu "),
        backgroundColor: Colors.blue,
      ),
      body:

      ListView.builder(
          itemCount: products.length+1,
          itemBuilder: (BuildContext context, int index) {
            if (index == products.length){
              return  const FooterWidget();
            }
            return MyStatefulWidget(product: products[index]);
          }),

    );
  }
}
