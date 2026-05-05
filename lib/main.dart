import 'package:flutter/material.dart';
import 'presentation/screens/event_list_screen.dart';
import 'presentation/screens/event_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BL Manhwa Events',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFF5F7),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFC0CB),
          primary: const Color(0xFFD4717F),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFFD4717F)),
          titleTextStyle: TextStyle(
            color: Color(0xFFD4717F),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const EventListScreen(),
        '/details': (context) => const EventDetailsScreen(),
      },
    );
  }
}
