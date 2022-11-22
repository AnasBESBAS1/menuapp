import 'package:flutter/material.dart';
import '../data/products.dart';
import 'package:flutter/services.dart';

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
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: "Hi jawjaw"))
                    .then((result) {
                      final snackBar = SnackBar(
                        content: Text('Copied to Clipboard'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },

                  child: const Text(
                    'Copy to Clipboard',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
/*
onTap: () async {
  await Clipboard.setData(ClipboardData(text: "your text"));
  // copied successfully
},
 */
