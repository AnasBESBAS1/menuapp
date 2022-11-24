import 'package:flutter/material.dart';
import '../data/products.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// private State class that goes with MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      if (widget.product.category.compareTo("") != 0) ...[
        Column(
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                    child: Text(
                      widget.product.category,
                      style: const TextStyle(
                        fontSize: 25.0,
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
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.normal,
                    ),
                  ))),
          const Spacer(flex: 1),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(
                      "${widget.product.price}",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        color: Color(0xFF212121),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ))),
        ],
      ),
    ]);
  }
}
