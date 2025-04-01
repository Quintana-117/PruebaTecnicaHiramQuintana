# PruebaTecnicaHiramQuintana
prueba tribuco
cd pruebatecnica_hiram_quintana
flutter clean
flutter pub get
flutter upgrade //opcional
flutter run

Usuario = admin
password = 1234

📝 Descripción General
Aplicación Flutter para gestionar notas personales con las siguientes características:

Autenticación de usuarios

Creación, visualización y eliminación de notas

Marcado de notas como favoritas

Organización por categorías

Visualización de notas favoritas

🛠️ Estructura del Proyecto
📂 Archivos Principales
main.dart: Punto de entrada de la aplicación, configura rutas y pantallas

data.dart: Modelos de datos y listas iniciales (Notas y Categorías)

🖼️ Pantallas (Screens)
login_screen.dart

Autenticación básica (usuario: admin, contraseña: 1234)

Persistencia de sesión con SharedPreferences

notas_screen.dart

Listado principal de notas

Funcionalidades:

Deslizar para eliminar notas

Marcar/desmarcar favoritos

Acceso rápido a otras secciones

notas_favoritas_screen.dart

Muestra solo notas marcadas como favoritas

Permite quitar de favoritos

nueva_nota_screen.dart

Formulario para crear nuevas notas

Selección de categoría

nueva_categoria_screen.dart

Creación de nuevas categorías

categorias_screen.dart

Listado de categorías disponibles

Opción para añadir nuevas

🔧 Funcionalidades Clave
🔐 Autenticación
Pantalla de login inicial

Validación de credenciales

Persistencia de sesión

📌 Gestión de Notas
CRUD completo (Crear, Leer, Actualizar, Eliminar)

Marcado de favoritos con feedback visual

Organización por categorías

Eliminación por gesto (swipe to delete)

🗂️ Categorías
Sistema básico de categorización

Creación de nuevas categorías

🚀 Cómo Usar
Iniciar sesión con:

Usuario: admin

Contraseña: 1234

Explorar las notas existentes

Crear nuevas notas con el botón (+)

Marcar notas importantes como favoritas

Acceder a la sección de favoritos desde el icono (❤️)

Gestionar categorías desde el icono (📂)

🛠️ Dependencias
flutter: Framework base

shared_preferences: Para persistencia de sesión

📱 Compatibilidad
Android

iOS 

Web (con configuración adicional)
