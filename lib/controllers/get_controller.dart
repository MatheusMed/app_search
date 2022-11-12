// import 'package:app/components/input_component.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../models/lista_model.dart';

// class HomeController extends GetxController {
//   final searchText = TextEditingController();

//   RxList<ListaModel> listas = [
//     ListaModel(titulo: 'Titulo 1', corpoTitulo: 'Corpo do titulo 1'),
//     ListaModel(titulo: 'Titulo 2', corpoTitulo: 'Corpo do titulo 2'),
//     ListaModel(titulo: 'Titulo 3', corpoTitulo: 'Corpo do titulo 3'),
//     ListaModel(titulo: 'Titulo 4', corpoTitulo: 'Corpo do titulo 4'),
//   ].obs;

//   searchMap(String value) {
//     if (value.isNotEmpty) {
//       final listSeach = listas
//           .where((e) {
//             final titulo = e.titulo.toLowerCase();
//             final input = value.toLowerCase();
//             print(titulo);
//             return titulo.contains(input);
//           })
//           .toList()
//           .obs;

//       listas = listSeach;
//     }
//   }
// }
