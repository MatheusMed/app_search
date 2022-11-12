import 'package:app/controllers/home_controller.dart';

import 'package:flutter/material.dart';

import '../components/form_component.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: FormComponent(controller: controller),
    );
  }
}
