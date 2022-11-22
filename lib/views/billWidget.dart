import 'package:flutter/material.dart';
import '../data/products.dart';

class BillWidget extends StatelessWidget {
  const BillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Menu "),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/restaurant.png',
                  height: 400, width: 250),
              const Text(
                "Total amount is : ",
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ));
  }
}
