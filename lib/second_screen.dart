import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool _switchText = false;

  // creating a signle widget
  Widget get firstText => Text('Hello Dart!');

  Widget get secondText => Text('Hello Flutter!');

  Widget get switchButton => ElevatedButton(
        onPressed: () {
          setState(
            () {
              _switchText = !_switchText;
            },
          );
        },
        child: Text('Swtich Text'),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _switchText ? firstText : secondText,
            SizedBox(
              height: 30,
            ),
            switchButton,
          ],
        ),
      ),
    );
  }
}
