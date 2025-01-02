import 'package:currency_converter/currency_first_file.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// We have to create a widgit widgit is like a comp in react

class MyApp extends StatelessWidget {
  // To remove the warning showing on MyApp class we have to write this
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CurrencyFirstFile());
  }
}
