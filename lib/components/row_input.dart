import 'package:flutter/material.dart';

import 'input_component.dart';

class RowInput extends StatelessWidget {
  final Function()? onPressed;
  final Function(String)? onSubmitted;
  final TextEditingController? controllerId;
  final TextEditingController? controllerTitle;
  final String placeHolder;
  const RowInput(
      {Key? key,
      required this.onPressed,
      required this.controllerTitle,
      required this.controllerId,
      this.onSubmitted,
      required this.placeHolder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: InputComponent(
            placeHolder: placeHolder,
            controllerText: controllerId,
            onSubmitted: onSubmitted,
          ),
        ),
        IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.55,
          child: InputComponent(
            placeHolder: placeHolder,
            controllerText: controllerTitle,
            onSubmitted: onSubmitted,
          ),
        ),
      ],
    );
  }
}
