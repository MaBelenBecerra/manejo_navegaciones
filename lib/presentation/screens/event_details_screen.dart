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
    final event = ModalRoute.of(context)!.settings.arguments as ManhwaEvent;

    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del Evento')),

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

                  
                  Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Color(0xFFFFC0CB),
                        width: 1.5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.auto_awesome,
                            size: 48,
                            color: Color(0xFFFFC0CB),
                          ),

                          const SizedBox(height: 16),

                          /// TÍTULO
                          Text(
                            event.title,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),

                          const SizedBox(height: 8),

                          /// AUTOR
                          Text(
                            'Por: ${event.author}',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),

                          const Divider(
                            color: Color(0xFFF8E1E7),
                            height: 32,
                            thickness: 1.5,
                          ),

                          /// DESCRIPCIÓN
                          Text(
                            event.description,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// MENSAJE DE RESERVA
                  if (mensajeReserva.isNotEmpty)
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8E1E7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        mensajeReserva,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                  const SizedBox(height: 30),

                  /// BOTÓN
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        final resultado = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PurchasePassScreen(eventName: event.title),
                          ),
                        );

                        if (resultado != null) {
                          setState(() {
                            mensajeReserva = resultado.toString();
                          });
                        }
                      },
                      child: Text(
                        'Comprar Pase - \$${event.passPrice} ♡',
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