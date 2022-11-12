import 'package:flutter/cupertino.dart';

import '../models/lista_model.dart';

class HomeController extends ChangeNotifier {
  final searchText = TextEditingController();

  final tituloDaEmpresa = TextEditingController();
  final idEmpresa = TextEditingController();

  final tituloParceiro = TextEditingController();
  final idParceiro = TextEditingController();

  final tituloProcedimento = TextEditingController();
  final idProcedimento = TextEditingController();

  List<ListaModel> listasEmpresa = [
    ListaModel(
      id: 1,
      titulo: 'Empresa 1',
    ),
    ListaModel(
      id: 2,
      titulo: 'Empresa 2',
    ),
    ListaModel(
      id: 3,
      titulo: 'Empresa 3',
    ),
    ListaModel(
      id: 4,
      titulo: 'Empresa 4',
    ),
  ];

  List<ListaModel> listaParceiros = [
    ListaModel(
      id: 1,
      titulo: 'Parceiro 1',
    ),
    ListaModel(
      id: 2,
      titulo: 'Parceiro 2',
    ),
    ListaModel(
      id: 3,
      titulo: 'Parceiro 3',
    ),
    ListaModel(
      id: 4,
      titulo: 'Parceiro 4',
    ),
  ];

  List<ListaModel> listaProcedimento = [
    ListaModel(
      id: 1,
      titulo: 'Linha Procedimento 1',
    ),
    ListaModel(
      id: 2,
      titulo: 'Linha Procedimento 2',
    ),
    ListaModel(
      id: 3,
      titulo: 'Linha Procedimento 3',
    ),
    ListaModel(
      id: 4,
      titulo: 'Linha Procedimento 4',
    ),
  ];

  var listaEmpresaValeu = ValueNotifier(<ListaModel>[]);
  var listaParceiroValeu = ValueNotifier(<ListaModel>[]);
  var listaProcedimentoValeu = ValueNotifier(<ListaModel>[]);

  HomeController() {
    listaEmpresaValeu.value = listasEmpresa;
    listaParceiroValeu.value = listaParceiros;
    listaProcedimentoValeu.value = listaProcedimento;
  }

  void searchValeuEmpresa(String value) {
    if (value.isNotEmpty) {
      final listSeach = listasEmpresa.where((e) {
        listaEmpresaValeu.value.where((element) {
          final id = element.id.toString().toLowerCase();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final titulo = e.titulo.toLowerCase();
        final input = value.toLowerCase();
        return titulo.contains(input);
      }).toList();
      listaEmpresaValeu.value = listSeach;

      notifyListeners();
    }
  }

  void searchValeuAndSetEmpresa(String value) {
    if (value.isNotEmpty) {
      listasEmpresa.forEach((model) {
        if (model.id.toString() == value) {
          idEmpresa.text = model.id.toString();
          tituloDaEmpresa.text = model.titulo;
        }
        notifyListeners();
      });
    }
  }

  void searchValeuParceiros(String value) {
    if (value.isNotEmpty) {
      final listSeach = listaParceiros.where((e) {
        listaParceiroValeu.value.where((element) {
          final id = element.id.toString().toLowerCase();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final titulo = e.titulo.toLowerCase();
        final input = value.toLowerCase();
        return titulo.contains(input);
      }).toList();
      listaParceiroValeu.value = listSeach;
      notifyListeners();
    }
  }

  void searchValeuAndSetParceiros(String value) {
    if (value.isNotEmpty) {
      listaParceiros.forEach((model) {
        if (model.id.toString() == value) {
          idParceiro.text = model.id.toString();
          tituloParceiro.text = model.titulo;
        }
        notifyListeners();
      });
    }
  }

  void searchValeuProcedimento(String value) {
    if (value.isNotEmpty) {
      final listSeach = listaProcedimento.where((e) {
        listaProcedimentoValeu.value.where((element) {
          final id = element.id.toString().toLowerCase();
          final inputId = value.toLowerCase();
          return id.contains(inputId);
        });
        final titulo = e.titulo.toLowerCase();
        final input = value.toLowerCase();
        return titulo.contains(input);
      }).toList();
      listaProcedimentoValeu.value = listSeach;
      notifyListeners();
    }
  }

  void searchValeuAndSetProcedimento(String value) {
    if (value.isNotEmpty) {
      listaProcedimento.forEach((model) {
        if (model.id.toString() == value) {
          idProcedimento.text = model.id.toString();
          tituloProcedimento.text = model.titulo;
        }
        notifyListeners();
      });
    }
  }

  void setValues(String titulo, int id) {
    if (id.toString().isNotEmpty) {
      if (titulo.contains("Empresa")) {
        idEmpresa.text = id.toString();
        tituloDaEmpresa.text = titulo;
        notifyListeners();
      } else if (titulo.contains("Parceiro")) {
        idParceiro.text = id.toString();
        tituloParceiro.text = titulo;
        notifyListeners();
      } else if (titulo.contains("Procedimento")) {
        idProcedimento.text = id.toString();
        tituloProcedimento.text = titulo;
        notifyListeners();
      }
    }
  }
}
