import 'package:flutter/material.dart';
import 'package:menu_app/data/addition.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key, required this.addition});

  final Addition addition;

  @override
  State<FooterWidget> createState() => _FooterWidget();
}

class _FooterWidget extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 40, 50, 0),
                  child: const Text(
                    "Total amount : ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.fromLTRB(130, 40, 10, 0),
                  child: Text(
                    " ${widget.addition.addition}",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/billing')
                      .then((_) => setState(() {}));
                  const Icon(Icons.arrow_forward_ios);
                },
                child: const Text(
                  'Order',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ));
  }
}
