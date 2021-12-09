// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MiDrawer extends StatefulWidget {
  MiDrawer({Key key}) : super(key: key);

  @override
  _miDrawerState createState() => _miDrawerState();
}

class _miDrawerState extends State<MiDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              SizedBox(
                child: Text(
                  'INDICE',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                ),
                height: 40,
                width: 100,
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page_2_list');
            },
            child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'EMERGENCIAS DEL HOGAR',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page_3');
            },
            child: Row(children: [
              Icon(Icons.medical_services),
              SizedBox(
                width: 10,
              ),
              Text(
                'EMERGENCIAS',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
