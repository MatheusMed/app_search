import 'package:app/components/row_input.dart';
import 'package:app/controllers/home_controller.dart';
import 'package:app/mixins/dialogMixin.dart';
import 'package:flutter/material.dart';

class FormComponent extends StatefulWidget {
  final HomeController controller;

  const FormComponent({Key? key, required this.controller}) : super(key: key);

  @override
  State<FormComponent> createState() => _FormComponentState();
}

class _FormComponentState extends State<FormComponent> with DialogMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RowInput(
          placeHolder: "Empresa",
          onTap: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaEmpresaValeu,
              widget.controller.searchValeuEmpresa,
              widget.controller.searchValeuAndSetEmpresa,
            );
          },
          onPressed: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaEmpresaValeu,
              widget.controller.searchValeuEmpresa,
              widget.controller.searchValeuAndSetEmpresa,
            );
          },
          controllerId: widget.controller.idEmpresa,
          controllerTitle: widget.controller.tituloDaEmpresa,
          onSubmitted: widget.controller.searchValeuAndSetEmpresa,
        ),
        RowInput(
          placeHolder: "Parceiro",
          onTap: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaParceiroValeu,
              widget.controller.searchValeuParceiros,
              widget.controller.searchValeuAndSetParceiros,
            );
          },
          onPressed: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaParceiroValeu,
              widget.controller.searchValeuParceiros,
              widget.controller.searchValeuAndSetParceiros,
            );
          },
          controllerId: widget.controller.idParceiro,
          controllerTitle: widget.controller.tituloParceiro,
          onSubmitted: widget.controller.searchValeuAndSetParceiros,
        ),
        RowInput(
          placeHolder: "Lista de Procedimento",
          onTap: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaProcedimentoValeu,
              widget.controller.searchValeuProcedimento,
              widget.controller.searchValeuAndSetProcedimento,
            );
          },
          onPressed: () {
            dialogCustom(
              widget.controller,
              widget.controller.listaProcedimentoValeu,
              widget.controller.searchValeuProcedimento,
              widget.controller.searchValeuAndSetProcedimento,
            );
          },
          controllerId: widget.controller.idProcedimento,
          controllerTitle: widget.controller.tituloProcedimento,
          onSubmitted: widget.controller.searchValeuAndSetProcedimento,
        ),
      ],
    );
  }
}
