import 'package:flutter/material.dart';

class page_3 extends StatefulWidget {
  page_3({Key key}) : super(key: key);

  @override
  _page_3State createState() => _page_3State();
}

class _page_3State extends State<page_3> {
 

  List<Map> personas = [
    {
      'servicio': 'policia',
      'contacto': 911,
    },
    {
      'servicio': 'medicus',
      'contacto': 080012321321,
    },
    {
      'servicio': 'SAME',
      'contacto': 700,
    },
    {
      'servicio': 'HATZALA',
      'contacto': 50322626,
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
              child: Text('Volver atras'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: personas.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(personas[index]['servicio']),
                    subtitle: Text('${personas[index]['contacto']}'),
                    trailing: const Icon(Icons.call,color: Colors.red,),
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

  
