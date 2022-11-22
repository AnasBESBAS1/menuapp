import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
          child: const Text(
            "Total amount ",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Roboto',
              color: Color(0xFF212121),
              fontWeight: FontWeight.bold,
            ),
          ),
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

  setState(Null Function() param0) {}
}
