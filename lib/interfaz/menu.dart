import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral control = Get.find();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 68, 193, 251)),
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("http://acrasesores.es/wp-content/uploads/2016/03/foto-carnet-silueta.jpg"),),
                    accountName: Text("Pepito perez"),
                    accountEmail: Text("pepitoperez@gmail.com"))),
            Divider(),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right_alt),
                  onTap: (() {
                    Navigator.pop(context);
                    control.cambiarposicion(0);
                  }),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right_alt),
                  onTap: (() {
                    Navigator.pop(context);
                    control.cambiarposicion(1);
                  }),
                ),
                ListTile(
                  leading: Icon(Icons.shopify),
                  title: Text("Mis productos"),
                  trailing: Icon(Icons.arrow_right_alt),
                  onTap: (() {
                    Navigator.pop(context);
                    control.cambiarposicion(2);
                  }),
                ),
                ListTile(
                  leading: Icon(Icons.business_center),
                  title: Text("Desarrollador"),
                  trailing: Icon(Icons.arrow_right_alt),
                  onTap: (() {
                    Navigator.pop(context);
                    control.cambiarposicion(3);
                  }),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
