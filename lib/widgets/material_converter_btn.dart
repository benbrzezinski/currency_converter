import 'package:flutter/material.dart';

class MaterialConverterBtn extends StatelessWidget {
  const MaterialConverterBtn({super.key, required this.convert});

  final VoidCallback convert;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: Colors.black87,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: () {
        convert();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Text(
        "Convert",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
