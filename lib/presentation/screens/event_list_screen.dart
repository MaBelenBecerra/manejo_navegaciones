import 'package:flutter/material.dart';
import '../../domain/entities/manhwa_event.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ManhwaEvent> events = [
      ManhwaEvent(
        title: 'The Pizza Delivery Man...',
        author: 'Uigang',
        description: 'Pop-up store exclusiva del Gold Palace.',
        passPrice: 25.50,
      ),
      ManhwaEvent(
        title: 'Ignite the Dawn',
        author: 'Desconocido',
        description: 'Firma de autógrafos y galería.',
        passPrice: 30.00,
      ),
      ManhwaEvent(
        title: 'Painter of the Night',
        author: 'Byeonduck',
        description: 'Experiencia inmersiva.',
        passPrice: 45.00,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Eventos 🎀')),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(events[index].title),
              subtitle: Text(events[index].author),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: events[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}