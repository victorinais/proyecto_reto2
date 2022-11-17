import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_reto2/interfaz/menu.dart';
import 'package:proyecto_reto2/interfaz/pag1_inicio.dart';
import 'package:proyecto_reto2/interfaz/pag2_comprar.dart';
import 'package:proyecto_reto2/interfaz/pag3_misproductos.dart';
import 'package:proyecto_reto2/interfaz/pag4_desarrollador.dart';

import '../controlador/controladorGeneral.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Online Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_misproductos(),
  pag4_desarrollador()
];

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral control = Get.find();
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(()=> paginas[control.posicionpagina]),
    );
  }
}
