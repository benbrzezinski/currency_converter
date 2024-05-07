import 'package:flutter/cupertino.dart';

class CupertinoConverterBtn extends StatelessWidget {
  const CupertinoConverterBtn({super.key, required this.convert});

  final VoidCallback convert;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: CupertinoColors.black,
      onPressed: () {
        convert();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Text(
        "Convert",
        style: TextStyle(color: CupertinoColors.white, fontSize: 18),
      ),
    );
  }
}
