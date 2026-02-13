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
}

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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Fila 1: Naruto y One Piece
              buildRowRect(
                const Color(0xFFFF8C00), Icons.flash_on, "Naruto",
                const Color.fromARGB(255, 112, 6, 94), Icons.sailing, "One Piece",
              ),
              
              // Fila 2: Demon Slayer y Jujutsu Kaisen
              buildRowRect(
                const Color.fromARGB(255, 38, 0, 255), Icons.colorize, "Demon Slayer",
                const Color.fromARGB(255, 183, 192, 106), Icons.auto_fix_high, "Jujutsu Kaisen",
              ),
              
              // Fila 3: Spy x Family y Black Clover
              buildRowRect(
                const Color.fromARGB(255, 6, 128, 27), Icons.visibility, "Spy x Family",
                const Color.fromARGB(255, 116, 7, 7), Icons.wb_sunny, "Black Clover",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para crear filas con rectángulos expandidos y datos
  Widget buildRowRect(Color c1, IconData i1, String t1, Color c2, IconData i2, String t2) {
    return Expanded(
      child: Row(
        children: [
          Expanded(child: rectangleCard(c1, i1, t1)),
          Expanded(child: rectangleCard(c2, i2, t2)),
        ],
      ),
    );
  }

  // Estilo de los rectángulos con Icono y Texto
  Widget rectangleCard(Color color, IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.all(8.0), 
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
