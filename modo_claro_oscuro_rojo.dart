import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _themeData = ThemeData.light(); // Tema inicial

  // Función para cambiar el tema
  void _changeTheme(ThemeData theme) {
    setState(() {
      _themeData = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switcher',
      theme: _themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Switcher App'),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: _themeData.brightness == Brightness.light
                ? 'claro'
                : _themeData.primaryColor == Colors.red ? 'rojo' : 'oscuro',
            onChanged: (String? newValue) {
              if (newValue == 'claro') {
                _changeTheme(ThemeData.light());
              } else if (newValue == 'oscuro') {
                _changeTheme(ThemeData.dark());
              } else if (newValue == 'rojo') {
                _changeTheme(ThemeData(primaryColor: Colors.red, brightness: Brightness.light));
              }
            },
            items: [
              DropdownMenuItem(
                value: 'claro',
                child: Text('Modo Claro'),
              ),
              DropdownMenuItem(
                value: 'oscuro',
                child: Text('Modo Oscuro'),
              ),
              DropdownMenuItem(
                value: 'rojo',
                child: Text('Modo Rojo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
