import 'package:flutter/material.dart';
import '../data.dart';

class NotasScreen extends StatefulWidget {
  @override
  _NotasScreenState createState() => _NotasScreenState();
}

class _NotasScreenState extends State<NotasScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notas'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favoritos');
            },
          ),
          IconButton(
            icon: Icon(Icons.category),
            onPressed: () {
              Navigator.pushNamed(context, '/categorias');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notas.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(notas[index].id),
            background: Container(color: Colors.red),
            onDismissed: (direction) {
              setState(() {
                notas.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Nota eliminada')),
              );
            },
            child: ListTile(
              title: Text(notas[index].titulo),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notas[index].contenido),
                  Text('Categoría: ${notas[index].categoria.nombre}',
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      notas[index].esFavorita ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        notas[index].toggleFavorito();
                      });
                    },
                  ),
                ],
              ),
              onTap: () {
                // Aquí podrías abrir la pantalla de edición
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/nuevaNota').then((_) {
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}