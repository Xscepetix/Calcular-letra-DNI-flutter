import 'package:flutter/material.dart';
import 'package:dni/calcularletra.dart'; // Asegúrate de que la ruta apunta bien a tu archivo dni.dart (o si lo tienes suelto en lib, sin 'screens/')

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidadorDni(), // Llamamos a tu clase del validador
    );
  }
}
