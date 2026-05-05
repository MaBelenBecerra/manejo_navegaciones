import 'package:flutter/material.dart';

class PurchasePassScreen extends StatelessWidget {
  final String eventName;

  const PurchasePassScreen({super.key, required this.eventName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Confirmar Reserva')),

      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const Icon(
                    Icons.shopping_bag_outlined,
                    size: 80,
                    color: Color(0xFFD4717F),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    '¿Estás seguro que deseas comprar el pase especial para $eventName?',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 40),

                  /// BOTÓN CONFIRMAR
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          "¡Reserva exitosa! Tu código de acceso es: 🎀-7721",
                        );
                      },
                      child: const Text('Confirmar Compra'),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// BOTÓN CANCELAR
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFFFC0CB)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(color: Color(0xFF8B4A54)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}