import 'package:flutter/cupertino.dart';
import 'package:currency_converter/widgets/cupertino_result_text.dart';
import 'package:currency_converter/widgets/cupertino_currency_input.dart';
import 'package:currency_converter/widgets/cupertino_converter_btn.dart';
import 'package:currency_converter/widgets/cupertino_reset_btn.dart';

class CupertinoHome extends StatefulWidget {
  const CupertinoHome({super.key});

  @override
  State<CupertinoHome> createState() => _CupertinoHomeState();
}

class _CupertinoHomeState extends State<CupertinoHome> {
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
    const bgMainColor = CupertinoColors.systemGrey3;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: CupertinoPageScaffold(
        backgroundColor: bgMainColor,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: bgMainColor,
          middle: Text(
            "Currency Converter",
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoResultText(
                  result: result,
                ),
                const SizedBox(
                  height: 50,
                ),
                CupertinoCurrencyInput(
                  currencyInputController: currencyInputController,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoConverterBtn(
                    convert: convert,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoResetBtn(
                    reset: reset,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
