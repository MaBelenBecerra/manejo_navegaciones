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
      theme: _buildTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const EventListScreen(),
        '/details': (context) => const EventDetailsScreen(),
      },
    );
  }
}

ThemeData _buildTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFFFF5F7),

    /// Tipografía base
    fontFamily: 'Quicksand',

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'PlayfairDisplay',
        fontSize: 32,
        color: Color(0xFF8B4A54),
      ),
      titleLarge: TextStyle(
        fontFamily: 'PlayfairDisplay',
        fontSize: 24,
        color: Color(0xFF8B4A54),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: 16,
      ),
    ),

    /// Colores
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFC0CB),
      primary: const Color(0xFFD4717F),
    ),

    /// AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Color(0xFFD4717F)),
      titleTextStyle: TextStyle(
        fontFamily: 'PlayfairDisplay',
        color: Color(0xFFD4717F),
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),

    /// Botones globales
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFC0CB),
        foregroundColor: const Color(0xFF8B4A54),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 2,
        textStyle: const TextStyle(
          fontFamily: 'Quicksand',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}