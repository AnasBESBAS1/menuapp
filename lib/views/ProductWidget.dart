import 'package:flutter/material.dart';
import '../../data/products.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  final double total_amount = 0;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),

        child: Row(

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (product.category != "") ...[
                  Text(
                    "${product.category}",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color:  Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Row(
                        children: [
                          Text(product.name),
                          Text("${product.price}"),
                          Radio(
                              value: product.price,
                              groupValue: 'null',
                              onChanged: (value) {

                              }),
                        ],
                      )
                    ])
              ],
            )
          ],
        ));
  }
}
