class Categoria {
  String id;
  String nombre;

  Categoria({required this.id, required this.nombre});
}

class Nota {
  String id;
  String titulo;
  String contenido;
  Categoria categoria;
  bool esFavorita;

  Nota({
    required this.id,
    required this.titulo,
    required this.contenido,
    required this.categoria,
    this.esFavorita = false,
  });

  void toggleFavorito() {
    esFavorita = !esFavorita;
  }
}

List<Categoria> categorias = [
  Categoria(id: '1', nombre: 'Trabajo'),
  Categoria(id: '2', nombre: 'Personal'),
  Categoria(id: '3', nombre: 'Estudio'),
];

List<Nota> notas = [
  Nota(
    id: '1',
    titulo: 'Reunión',
    contenido: 'Preparar la presentación',
    categoria: categorias[0],
  ),
  Nota(
    id: '2',
    titulo: 'Comprar leche',
    contenido: 'Ir al supermercado',
    categoria: categorias[1],
  ),
  Nota(
    id: '3',
    titulo: 'Estudiar Flutter',
    contenido: 'Completar el proyecto de notas',
    categoria: categorias[2],
    esFavorita: true,
  ),
];