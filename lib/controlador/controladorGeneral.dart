import 'package:get/get.dart';

import '../clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;

  @override
  void onInit() {
    pro.add(productos(
        1,
        "Tennis nike",
        "https://cdn10.totalcode.net/sportlife/product-image/es/tenis-nike-air-max-tavas-3.webp",
        0,
        430000));
    pro.add(productos(
        2,
        "Camiseta adidas hombre",
        "https://cdn10.totalcode.net/sportlife/product-image/es/camiseta-adidas--fcf-a-jsy-hombre-1.webp",
        0,
        194900));
    pro.add(productos(
        3,
        "Chaqueta adidas hombre",
        "https://cdn10.totalcode.net/sportlife/product-image/es/chaqueta-adidas-hombre-1.webp",
        0,
        289900));
    pro.add(productos(
        4,
        "Camiseta asics mujer",
        "https://cdn10.totalcode.net/sportlife/product-image/es/camiseta-asics-warm_up--circuits-mujer-1.webp",
        0,
        99900));
    pro.add(productos(
        5,
        "Chaqueta winner mujer",
        "https://cdn10.totalcode.net/sportlife/product-image/es/chaqueta-ciclismo-w-negro-_-rosado-1.webp",
        0,
        167900));
    pro.add(productos(
        6,
        "Tennis ducati niño",
        "https://cdn10.totalcode.net/sportlife/product-image/es/tenis-ducati-zto-fashion-yw201194h-du-4.webp",
        0,
        189900));
    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionpagina => _posicionPagina.value;

  void cambiarcantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " │ valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal(){
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total+pro[i].cantidad*pro[i].precio; 
      }
    return total;
  }

  void limpiarTodo(){
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
      }
      calcularTotal();
  }

}
