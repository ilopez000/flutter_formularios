import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Valor inicial seleccionado para el Dropdown
  String _selectedNumber = '1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Selector App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select a Number'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton<String>(
                value: _selectedNumber,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedNumber = newValue!;
                  });
                },
                items: <String>['1', '2', '3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20), // Espacio entre el Dropdown y el texto
              Text(
                'Selected number: $_selectedNumber',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
