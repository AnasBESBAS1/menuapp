import 'package:flutter/material.dart';
import '../../data/products.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(child: Text(product.name)),
            // prendra toute la largeur disponible
            // espace horizontal de 16 dp
            Text("${product.price}"),
            // mise en forme de l' entier en texte
            // espace horizontal de 16 dp
            Row(
              children: [
                Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
              ],
            ),
          ],
        ));
  }
}
