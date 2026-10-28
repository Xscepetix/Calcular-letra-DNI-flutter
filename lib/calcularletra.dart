import 'package:flutter/material.dart';

// 1. StatefulWidget porque la pantalla cambia de estado al calcular y mostrar errores
class ValidadorDni extends StatefulWidget {
  const ValidadorDni({super.key});

  @override
  State<ValidadorDni> createState() => _ValidadorDniState();
}

class _ValidadorDniState extends State<ValidadorDni> {
  final TextEditingController _dniController = TextEditingController();
  String _resultado = '';

  // Cadena oficial con las letras del DNI ordenadas por el resto (0 al 22)
  static const String _letrasDni = "TRWAGMYFPDXBNJZSQVHLCKE";

  void _calcularLetra() {
    String textoIngresado = _dniController.text.trim();

    // 1. Comprobar si está vacío
    if (textoIngresado.isEmpty) {
      setState(() {
        _resultado = 'Por favor, escribe un número de DNI.';
      });
      return;
    }

    // 2. NUEVA VALIDACIÓN: Comprobar que tenga exactamente 8 dígitos
    if (textoIngresado.length != 8) {
      setState(() {
        _resultado = 'Debe tener 8 dígitos.';
      });
      return;
    }

    // 3. Comprobar que sean solo números válidos
    int? numeroDni = int.tryParse(textoIngresado);

    if (numeroDni == null) {
      setState(() {
        _resultado = 'Error: Ingrese solo números.';
      });
      return;
    }

    // 4. Operación matemática: resto de dividir entre 23
    int indiceLetra = numeroDni % 23;
    String letraCalculada = _letrasDni[indiceLetra];

    // Actualizamos la pantalla con el resultado final
    setState(() {
      _resultado = 'DNI: $textoIngresado-$letraCalculada';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validador de DNI'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _dniController,
              keyboardType: TextInputType.number,
              maxLength: 8, // Limita visualmente a 8 caracteres máximo
              decoration: const InputDecoration(
                labelText: 'Número de DNI',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.badge),
                counterText: '', // Oculta el contador de caracteres inferior
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularLetra,
              child: const Text('Calcular Letra'),
            ),
            const SizedBox(height: 30),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
