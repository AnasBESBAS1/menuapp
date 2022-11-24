import 'package:flutter/material.dart';
import '../data/addition.dart';
import 'package:flutter/services.dart';

class BillWidget extends StatelessWidget {
  BillWidget({super.key, required this.addition});

  Addition addition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Menu "),
          backgroundColor: Colors.blue,
        ),

        body: Padding(
          padding : const EdgeInsets .all (20.0) ,
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/restaurant.png',
                  height: 500, width: 500),
              Row(
                children:  [
                   Container(
                       padding: const EdgeInsets.only(left: 16),
                       child: Text(
                    "Total amount is :",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Roboto',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  const SizedBox ( width : 140) ,
                  Expanded(
                      child:  Text(
                        "${addition.addition}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          color: Color(0xFF212121),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  const SizedBox ( width : 16) ,
                ],
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                  ),
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(
                            text: "Total amount is : ${addition.addition}"))
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
