import 'package:flutter/material.dart';
import '../../data/products.dart';

class ProductWidget2 extends StatelessWidget {
  final Product product;
  final double total_amount = 0;

  const ProductWidget2({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (product.category.compareTo("") != 0) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    product.category,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text(product.name),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 25),
                        child: Text("${product.price}"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 25),
                        child: Radio(
                            value: product.price,
                            groupValue: product.category,
                            onChanged: (value) {}),
                      ),
                    ],
                  )),
            ],
          ),
        ] else ...[
          Container(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(product.name),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text("${product.price}"),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 25),
                    child: Radio(
                        value: product.price,
                        groupValue: product.category,
                        onChanged: (value) {}),
                  ),
                ],
              )),
        ]
      ],
    );
  }
}
