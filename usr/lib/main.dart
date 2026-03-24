import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const LiFiApp());
}

class LiFiApp extends StatelessWidget {
  const LiFiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Li-Fi Project Report',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
