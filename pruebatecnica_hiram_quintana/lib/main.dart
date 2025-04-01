import 'package:flutter/material.dart';
import 'screens/notas_screen.dart';
import 'screens/notas_favoritas_screen.dart';
import 'screens/nueva_nota_screen.dart';
import 'screens/nueva_categoria_screen.dart';
import 'screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/categorias_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestor de Notas',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/notas': (context) => NotasScreen(),
        '/favoritos': (context) => NotasFavoritasScreen(),
        '/nuevaNota': (context) => NuevaNotaScreen(),
        '/nuevaCategoria': (context) => NuevaCategoriaScreen(),
        '/categorias': (context) => CategoriasScreen(),
      },
    );
  }
}