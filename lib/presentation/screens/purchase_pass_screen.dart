import 'package:flutter/material.dart';

class PurchasePassScreen extends StatelessWidget {
  final String eventName;

  const PurchasePassScreen({super.key, required this.eventName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Compra')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Comprar pase para $eventName'),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  "Compra exitosa 🎀",
                );
              },
              child: const Text('Confirmar'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}