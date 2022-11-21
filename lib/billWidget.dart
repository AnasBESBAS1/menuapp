import 'package:flutter/material.dart';
import './data/products.dart';

class BillWidget extends StatelessWidget {
  final double total_amount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all (16.0),
        child: Row(
          children: [
            Image.asset('assets/images/lion.png'), // <-- SEE HERE
          ],
        ));
  }
}