import 'package:flutter/material.dart';

class Plato {
  final String nombre;
  final double precio;
  final String imagen;

  Plato({required this.nombre, required this.precio, required this.imagen});
}

List<Plato> platos = [
  Plato(nombre: 'Hamburguesa', precio: 8.99, imagen: 'assets/images/hamburguesa.jpg'),
  Plato(nombre: 'Pizza', precio: 10.99, imagen: 'assets/images/pizza.jpg'),
  Plato(nombre: 'Ensalada César', precio: 6.99, imagen: 'assets/images/ensalada_cesar.jpg'),
  Plato(nombre: 'Pasta Alfredo', precio: 12.99, imagen: 'assets/images/pasta_alfredo.jpg'),
  Plato(nombre: 'Sándwich de Pollo', precio: 7.99, imagen: 'assets/images/sandwich_pollo.jpg'),
  Plato(nombre: 'Sopa del Día', precio: 4.99, imagen: 'assets/images/sopa_del_dia.jpg'),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: ListView.builder(
          itemCount: platos.length,
          itemBuilder: (context, index) {
            final Plato plato = platos[index];
            return ListTile(
              leading: Image.asset(plato.imagen),
              title: Text(plato.nombre),
              subtitle: Text('\$${plato.precio.toStringAsFixed(2)}'),
              onTap: () {
                print('Hiciste clic en ${plato.nombre}');
              },
            );
          },
        ),
      ),
    );
  }
}

/* Ejercicio 1: import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu de Restaurante'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Ir a la página de inicio'),
              onTap: () {
                // Acción al hacer clic en el elemento Inicio
                print('Hiciste clic en Inicio');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              subtitle: Text('Ver tu perfil'),
              onTap: () {
                // Acción al hacer clic en el elemento Perfil
                print('Hiciste clic en Perfil');
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
              subtitle: Text('Ir a la sección de chat'),
              onTap: () {
                // Acción al hacer clic en el elemento Chat
                print('Hiciste clic en Chat');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Ir a la página de inicio'),
              onTap: () {
                // Acción al hacer clic en el elemento Inicio
                print('Hiciste clic en Inicio');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
              subtitle: Text('Ver tu perfil'),
              onTap: () {
                // Acción al hacer clic en el elemento Perfil
                print('Hiciste clic en Perfil');
              },
            ),
          ],
        ),
      ),
    );
  }
}
