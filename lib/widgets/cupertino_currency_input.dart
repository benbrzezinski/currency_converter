import 'package:flutter/cupertino.dart';

class CupertinoCurrencyInput extends StatelessWidget {
  const CupertinoCurrencyInput(
      {super.key, required this.currencyInputController});

  final TextEditingController currencyInputController;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
        controller: currencyInputController,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        style: const TextStyle(color: CupertinoColors.black),
        cursorColor: CupertinoColors.black,
        placeholder: "Please provide the amount in EUR",
        prefix: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            CupertinoIcons.money_euro_circle_fill,
            size: 30,
            color: CupertinoColors.black,
          ),
        ),
        decoration: const BoxDecoration(
            color: CupertinoColors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        padding:
            const EdgeInsets.only(left: 10, top: 15, right: 15, bottom: 15));
  }
}
