import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyFirstFile extends StatelessWidget {
  const CurrencyFirstFile({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    // Duplicate code so we will create a seprate varaible for it
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      // borderRadius: BorderRadius.all(
      //   Radius.circular(30.0),
      // ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      // To make the text in the center flutter provider a special widgit for
      // it which is Center
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),

            // Padding - Textfeild
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                controller: textEditingController,
                decoration: InputDecoration(
                  // label: Text("Enter the amount in PKR"),
                  hintText: 'Enter the amount in USD',
                  prefixIcon: Icon(Icons.monetization_on),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            // Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  // only in debug mode the print will executed
                  // if (kDebugMode) {
                  //   print('I\'m clicked');
                  // }
                  print(textEditingController.text);
                  result = double.parse(textEditingController.text) * 280;
                  print(result);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(
                    double.infinity,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                // Here in the below code we write the WidgetStateProperty for
                // Every propety we writing which is quit more code to write
                // So, we've alternative which is styleFrom
                // Which is above implemented
                // Same commented below code is implemented above

                // style: ButtonStyle(
                //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                //   foregroundColor: WidgetStatePropertyAll(Colors.white),
                //   minimumSize: WidgetStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   shape: WidgetStateProperty.all(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(5),
                //     ),
                //   ),
                // ),

                child: Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
