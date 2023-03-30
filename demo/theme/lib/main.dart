import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // On utilise notre thème personnalisé ici, dans le MaterialApp !
      theme: MonTheme.theme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}

class MonTheme {
  static ThemeData get theme {
    return ThemeData(
      // Tu peux commencer par modifier la couleur principale sauvegarder et observer les changements
      primaryColor: Colors.blue,
      fontFamily: 'Roboto',
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 24.0),
        bodyText1: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
