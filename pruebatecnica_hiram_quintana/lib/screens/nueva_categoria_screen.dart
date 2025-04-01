import 'package:flutter/material.dart';
import '../data.dart';

class NuevaCategoriaScreen extends StatefulWidget {
  @override
  _NuevaCategoriaScreenState createState() => _NuevaCategoriaScreenState();
}

class _NuevaCategoriaScreenState extends State<NuevaCategoriaScreen> {
  final TextEditingController nombreController = TextEditingController();

  void agregarCategoria() {
    categorias.add(Categoria(
      id: DateTime.now().toString(),
      nombre: nombreController.text,
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nueva Categoría')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: nombreController, decoration: InputDecoration(labelText: 'Nombre')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: agregarCategoria, child: Text('Guardar Categoría')),
          ],
        ),
      ),
    );
  }
}
