import 'package:flutter/material.dart';

class pag4_desarrollador extends StatefulWidget {
  const pag4_desarrollador({super.key});

  @override
  State<pag4_desarrollador> createState() => _pag4_desarrolladorState();
}

class _pag4_desarrolladorState extends State<pag4_desarrollador> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pepito"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text("Cr50 Cl143 25-31 Medellin"),
            subtitle: Text("Direccion"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("3125150569"),
            subtitle: Text("Telefono"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("pepitoperez@gmail.com"),
            subtitle: Text("Email"),
          ),
        ],
      ),
    );
  }
}
