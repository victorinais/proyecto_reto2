import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_reto2/controlador/controladorGeneral.dart';
import 'package:proyecto_reto2/interfaz/home.dart';



void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}

