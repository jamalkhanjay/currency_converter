import 'package:flutter/material.dart';

class CurrencyFirstFile extends StatefulWidget {
  const CurrencyFirstFile({super.key});

  @override
  State<CurrencyFirstFile> createState() => _CurrencyFirstFileState();
}

class _CurrencyFirstFileState extends State<CurrencyFirstFile> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  // Convert function for OnPressed button we can also write here like this
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 281;
    });
  }

  @override
  Widget build(BuildContext context) {
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PKR: ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),

              // Padding - Textfeild
              TextField(
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

              const SizedBox(
                height: 15,
              ),

              // Button
              TextButton(
                onPressed: convert,
                // () {
                // only in debug mode the print will executed
                // if (kDebugMode) {
                //   print('I\'m clicked');
                // }

                // setState(
                //   () {
                //     result = double.parse(textEditingController.text) * 280;
                //   },
                // );
                // },

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
