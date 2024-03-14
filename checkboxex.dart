import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Checkbox'),
        ),
        body: const CheckBoxWidget(),
      ),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool checkBoxA = false;
  bool checkBoxB = false;
  bool checkBoxC = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: const Text('Opción A'),
          value: checkBoxA,
          onChanged: (bool? value) {
            setState(() {
              checkBoxA = value!;
              // Actualiza el estado para reflejar la selección
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Opción B'),
          value: checkBoxB,
          onChanged: (bool? value) {
            setState(() {
              checkBoxB = value!;
              // Actualiza el estado para reflejar la selección
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Opción C'),
          value: checkBoxC,
          onChanged: (bool? value) {
            setState(() {
              checkBoxC = value!;
              // Actualiza el estado para reflejar la selección
            });
          },
        ),
        const Divider(),
        Text('Seleccionados:'),
        if (checkBoxA) const Text('- Opción A'),
        if (checkBoxB) const Text('- Opción B'),
        if (checkBoxC) const Text('- Opción C'),
      ],
    );
  }
}
