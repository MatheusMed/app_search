import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final TextEditingController? controllerText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? placeHolder;
  const InputComponent(
      {Key? key,
      this.controllerText,
      this.onChanged,
      this.onSubmitted,
      required this.placeHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextField(
        onSubmitted: onSubmitted,
        onChanged: onChanged,
        controller: controllerText,
        decoration: InputDecoration(
            labelText: placeHolder,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
