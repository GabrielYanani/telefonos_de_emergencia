// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:telefonos_de_emergencia/screen/page_1.dart';
import 'package:telefonos_de_emergencia/screen/page_2_list.dart';
import 'package:telefonos_de_emergencia/screen/page_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.dark,
      title: 'numeros de emergencia',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ), 
      initialRoute: '/', // ruta inicial por defecto
      routes: {
        '/': (_) => page_1(),
        '/page_2_list': (_) => page_2(),
        '/page_3':(_) => page_3(),
      },
    );
  }
}