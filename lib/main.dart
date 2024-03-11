import 'package:flutter/material.dart';
import 'package:pet/features/catalog/presentation/catalog_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'catalog': (context) => const CatalogScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).pushNamed('catalog'),
          child: const Text('Перейти в каталог'),
        ),
      ),
    );
  }
}
