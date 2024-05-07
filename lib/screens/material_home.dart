import 'package:flutter/material.dart';
import 'package:currency_converter/widgets/material_result_text.dart';
import 'package:currency_converter/widgets/material_currency_input.dart';
import 'package:currency_converter/widgets/material_converter_btn.dart';
import 'package:currency_converter/widgets/material_reset_btn.dart';

class MaterialHome extends StatefulWidget {
  const MaterialHome({super.key});

  @override
  State<MaterialHome> createState() => _MaterialHomeState();
}

class _MaterialHomeState extends State<MaterialHome> {
  final currencyInputController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      final newResult = double.tryParse(currencyInputController.text);

      if (newResult != null) {
        result = newResult * 4.32;
        currencyInputController.clear();
      }
    });
  }

  void reset() {
    setState(() {
      result = 0;
      currencyInputController.clear();
    });
  }

  @override
  void dispose() {
    currencyInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bgMainColor = Colors.blueGrey[600];

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: bgMainColor,
        appBar: AppBar(
          backgroundColor: bgMainColor,
          title: const Text(
            "Currency Converter",
          ),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialResultText(
                  result: result,
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialCurrencyInput(
                  currencyInputController: currencyInputController,
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialConverterBtn(
                  convert: convert,
                ),
                const SizedBox(
                  height: 12,
                ),
                MaterialResetBtn(
                  reset: reset,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
