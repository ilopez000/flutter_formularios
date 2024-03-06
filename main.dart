import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light; // Modo de tema predeterminado

  void _toggleTheme(String? value) {
    setState(() {
      if (value == 'Oscuro') {
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Theme App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode, // Usa el modo de tema basado en la selección del usuario
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch Theme App'),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: themeMode == ThemeMode.dark ? 'Oscuro' : 'Claro',
            items: <String>['Oscuro', 'Claro'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: _toggleTheme,
          ),
        ),
      ),
    );
  }
}
