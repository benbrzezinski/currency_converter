import 'package:flutter/material.dart';

class MaterialResultText extends StatelessWidget {
  const MaterialResultText({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${result.toStringAsFixed(2)} PLN",
      style: const TextStyle(
          fontSize: 52, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
