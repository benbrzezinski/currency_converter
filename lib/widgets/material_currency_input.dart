import 'package:flutter/material.dart';

class MaterialCurrencyInput extends StatelessWidget {
  const MaterialCurrencyInput(
      {super.key, required this.currencyInputController});

  final TextEditingController currencyInputController;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black87, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(8)));

    return TextField(
      controller: currencyInputController,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black87,
      decoration: const InputDecoration(
          hintText: "Please provide the amount in EUR",
          hintStyle: TextStyle(color: Colors.black54),
          prefixIcon: Icon(
            Icons.monetization_on,
            size: 30,
          ),
          prefixIconColor: Colors.black87,
          filled: true,
          fillColor: Colors.white,
          focusedBorder: border,
          enabledBorder: border,
          contentPadding: EdgeInsets.all(15)),
    );
  }
}
