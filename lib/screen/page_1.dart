// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:telefonos_de_emergencia/widget/drawer.dart';

class page_1 extends StatefulWidget {
  page_1({Key key}) : super(key: key);

  @override
  _page_1State createState() => _page_1State();
}

class _page_1State extends State<page_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MiDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'NUMEROS DE EMEGENCIA',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ESTA APP SIRVE PARA PODER COMUNICARSE RAPIDAMENTE ANTE EMERGENCIAS DE TODO TIPO A TODOS LOS SERVICIOS DE EMERGENCIA,TANTO DEL HOGAR, COMO EMERGENCIAS PUBLICAS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
