import 'package:flutter/material.dart';
import '../data.dart';

class NuevaNotaScreen extends StatefulWidget {
  @override
  _NuevaNotaScreenState createState() => _NuevaNotaScreenState();
}

class _NuevaNotaScreenState extends State<NuevaNotaScreen> {
  final TextEditingController tituloController = TextEditingController();
  final TextEditingController contenidoController = TextEditingController();
  Categoria? _categoriaSeleccionada;

  void agregarNota() {
    if (_categoriaSeleccionada == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selecciona una categoría')),
      );
      return;
    }

    notas.add(Nota(
      id: DateTime.now().toString(),
      titulo: tituloController.text,
      contenido: contenidoController.text,
      categoria: _categoriaSeleccionada!,
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nueva Nota')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: tituloController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: contenidoController,
              decoration: InputDecoration(labelText: 'Contenido'),
              maxLines: 3,
            ),
            DropdownButton<Categoria>(
              value: _categoriaSeleccionada,
              hint: Text('Selecciona una categoría'),
              items: categorias.map((Categoria categoria) {
                return DropdownMenuItem<Categoria>(
                  value: categoria,
                  child: Text(categoria.nombre),
                );
              }).toList(),
              onChanged: (Categoria? nuevaCategoria) {
                setState(() {
                  _categoriaSeleccionada = nuevaCategoria;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: agregarNota,
              child: Text('Guardar Nota'),
            ),
          ],
        ),
      ),
    );
  }
}