import 'package:flutter/material.dart';
import '../data.dart';

class NotasFavoritasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Nota> favoritas = notas.where((nota) => nota.esFavorita).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Notas Favoritas')),
      body: favoritas.isEmpty
          ? Center(child: Text('No hay notas favoritas'))
          : ListView.builder(
        itemCount: favoritas.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(favoritas[index].id),
            background: Container(color: Colors.red),
            onDismissed: (direction) {
              favoritas[index].esFavorita = false;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Nota removida de favoritos')),
              );
              Navigator.pushReplacementNamed(context, '/favoritos');
            },
            child: ListTile(
              title: Text(favoritas[index].titulo),
              subtitle: Text(favoritas[index].contenido),
              trailing: IconButton(
                icon: Icon(Icons.favorite, color: Colors.red),
                onPressed: () {
                  favoritas[index].esFavorita = false;
                  Navigator.pushReplacementNamed(context, '/favoritos');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}