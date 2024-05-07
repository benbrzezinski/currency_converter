import 'package:flutter/material.dart';

class MaterialResetBtn extends StatelessWidget {
  const MaterialResetBtn({super.key, required this.reset});

  final VoidCallback reset;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: () {
        reset();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Text(
        "Reset",
        style: TextStyle(color: Colors.black87, fontSize: 18),
      ),
    );
  }
}
