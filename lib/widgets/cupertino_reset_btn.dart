import 'package:flutter/cupertino.dart';

class CupertinoResetBtn extends StatelessWidget {
  const CupertinoResetBtn({super.key, required this.reset});

  final VoidCallback reset;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: CupertinoColors.white,
      onPressed: () {
        reset();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Text(
        "Reset",
        style: TextStyle(color: CupertinoColors.black, fontSize: 18),
      ),
    );
  }
}
