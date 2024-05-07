import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:currency_converter/screens/material_home.dart';
import 'package:currency_converter/screens/cupertino_home.dart';

void main() {
  runApp(const AppMaterial());
}

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Currency Converter",
      home: MaterialHome(),
    );
  }
}

class AppCupertino extends StatelessWidget {
  const AppCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Currency Converter",
      home: CupertinoHome(),
    );
  }
}
