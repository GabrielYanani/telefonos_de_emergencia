// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class page_2_list extends StatelessWidget {
  page_2_list({Key key}) : super(key: key);

  List<Map> personas = [
    {
      'nombre': 'Ramon',
      'contacto': 154564565,
      'servicio': 'PLOMERO',
    },
    {
      'nombre': 'Damian',
      'contacto': 153939298,
      'servicio': 'ELECTRICISTA',
    },
    {
      'nombre': 'David',
      'contacto': 153747347,
      'servicio': 'CERRAJERO',
    },
    {
      'nombre': 'Fede',
      'contacto': 152943765,
      'servicio': 'GASISTA',
    },
    {
      'nombre': 'Jose',
      'contacto': 152984783,
      'servicio': 'ADMINISTRACION',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Volver al Inicio'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: personas.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    horizontalTitleGap: 30,
                    leading: Text(
                      personas[index]['servicio'],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    title: Text(personas[index]['nombre']),
                    subtitle: Text('${personas[index]['contacto']}'),
                    trailing: const Icon(
                      Icons.call,
                      color: Colors.red,
                    ),
                    tileColor: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
