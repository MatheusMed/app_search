import 'package:app/components/input_componentID.dart';
import 'package:flutter/material.dart';

import 'input_component.dart';

class RowInput extends StatelessWidget {
  final Function()? onPressed;
  final Function(String)? onSubmitted;
  final TextEditingController? controllerId;
  final TextEditingController? controllerTitle;
  final String placeHolder;
  final Function()? onTap;
  const RowInput(
      {Key? key,
      required this.onPressed,
      required this.controllerTitle,
      required this.controllerId,
      this.onSubmitted,
      required this.placeHolder,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
          child: InputComponentID(
            controllerText: controllerId,
            onSubmitted: onSubmitted,
          ),
        ),
        IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: InputComponent(
            onTap: onTap,
            border: true,
            placeHolder: placeHolder,
            controllerText: controllerTitle,
            onSubmitted: onSubmitted,
          ),
        ),
      ],
    );
  }
}
