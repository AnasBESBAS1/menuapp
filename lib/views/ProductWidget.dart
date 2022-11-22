import 'package:flutter/material.dart';
import '../../data/products.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  final double total_amount = 0;
  final bool value = false;

  const ProductWidget({super.key, required this.product});

  void _onRememberMeChanged(bool newValue) {
    bool rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      if (product.category.compareTo("") != 0) ...[
        Column(
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(
                      product.category,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        color: Color(0xFF212121),
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            )
          ],
        )
      ],
      Row(
        children: [
          Expanded(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.normal,
                    ),
                  ))),
          const Spacer(flex: 1),
          Expanded(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "${product.price}",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.normal,
                    ),
                  ))),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: RadioListTile(
                      value: product.price,
                      groupValue: "group value",
                      onChanged: (value){
                        print(value); //selected value
                      }
                  ))),
        ],
      ),
    ]);
  }
}
