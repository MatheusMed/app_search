import 'package:flutter/material.dart';

class InputComponentID extends StatelessWidget {
  final TextEditingController? controllerText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const InputComponentID({
    Key? key,
    this.controllerText,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        controller: controllerText,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
