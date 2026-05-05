import 'package:flutter/material.dart';
import '../../domain/entities/manhwa_event.dart';
import 'purchase_pass_screen.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({super.key});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  String mensajeReserva = "";

  @override
  Widget build(BuildContext context) {
    final event =
        ModalRoute.of(context)!.settings.arguments as ManhwaEvent;

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(event.title,
                style: const TextStyle(fontSize: 22)),
            Text(event.description),

            if (mensajeReserva.isNotEmpty)
              Text(mensajeReserva),

            ElevatedButton(
              onPressed: () async {
                final resultado = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        PurchasePassScreen(eventName: event.title),
                  ),
                );

                if (resultado != null) {
                  setState(() {
                    mensajeReserva = resultado;
                  });
                }
              },
              child: Text('Comprar \$${event.passPrice}'),
            ),
          ],
        ),
      ),
    );
  }
}