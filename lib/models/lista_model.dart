class ListaModel {
  final int id;
  final String titulo;

  ListaModel({
    required this.id,
    required this.titulo,
  });

  @override
  String toString() => "ListaModel(id: $id, titulo: $titulo)";
}
