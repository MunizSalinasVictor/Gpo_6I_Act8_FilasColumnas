import 'package:flutter/material.dart';

void main() {
  runApp(const AppCrunchyroll());
}

class AppCrunchyroll extends StatelessWidget {
  const AppCrunchyroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContenidoFilaColumna(),
    );
  }
} // clase AppCrunchyroll


class ContenidoFilaColumna extends StatelessWidget {
  const ContenidoFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crunchyroll el Victor',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: const [
          Icon(Icons.camera_alt, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.movie, color: Colors.black),
          SizedBox(width: 15),
        ],
      ), //fin AppBar


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Fila 1: Naranja fuerte y Naranja
              buildRowRect(const Color(0xFFFF8C00), Colors.orange),
              
              // Fila 2: Rojizo naranja y Naranja bajo
              buildRowRect(const Color(0xFFFF4500), const Color(0xFFFFCC80)),
              
              // Fila 3: Rojo y Naranja diferente
              buildRowRect(Colors.red, const Color(0xFFE67E22)),
            ],
          ),
        ),
      ), // fin body
    ); // fin Scaffold
  }

  // Widget para crear filas con rectángulos expandidos
  Widget buildRowRect(Color c1, Color c2) {
    return Expanded(
      child: Row(
        children: [
          Expanded(child: rectangleCard(c1)),
          Expanded(child: rectangleCard(c2)),
        ],
      ),
    );
  }

  Widget rectangleCard(Color color) {
    return Container(
      margin: const EdgeInsets.all(8.0), 
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}