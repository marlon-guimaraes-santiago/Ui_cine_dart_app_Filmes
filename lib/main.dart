import 'package:cine_dart_ui/telas/Tela_Inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: TelaInicio(),
    );
  }
}

