import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedScreen = 'Pantalla 1';

  void _navigateToSelectedScreen() {
    if (_selectedScreen == 'Pantalla 1') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pantalla1()),
      );
    } else if (_selectedScreen == 'Pantalla 2') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pantalla2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: _selectedScreen,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedScreen = newValue!;
                });
              },
              items: <String>['Pantalla 1', 'Pantalla 2']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: _navigateToSelectedScreen,
              child: Text('Ir a la pantalla seleccionada'),
            ),
          ],
        ),
      ),
    );
  }
}

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1'),
      ),
      body: Center(
        child: Text('Bienvenido a la Pantalla 1'),
      ),
    );
  }
}

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Text('Bienvenido a la Pantalla 2'),
      ),
    );
  }
}
