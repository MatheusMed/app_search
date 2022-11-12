import 'package:app/controllers/home_controller.dart';
import 'package:app/styles/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/input_component.dart';

mixin DialogMixin<T extends StatefulWidget> on State<T> {
  void dialogCustom(
    HomeController controller,
    ValueListenable listaValeu,
    Function(String)? onChanged,
    dynamic Function(String)? onSubmitted,
  ) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: ValueListenableBuilder(
                  valueListenable: listaValeu,
                  builder: (context, lista, widget) {
                    return SingleChildScrollView(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                        child: Column(
                          children: [
                            InputComponent(
                              controllerText: controller.searchText,
                              onChanged: onChanged,
                              onSubmitted: onSubmitted,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: lista.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final item = lista[index];
                                    return ListTile(
                                      title: Text(
                                        "${item.id} - ${item.titulo}",
                                        style: TextStyles.textBold,
                                      ),
                                      onTap: () {
                                        controller.setValues(
                                          item.titulo,
                                          item.id,
                                        );
                                        Navigator.pop(context);
                                        controller.searchText.clear();
                                      },
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ));
  }
}
