import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../controlador/controladorGeneral.dart';

class pag3_misproductos extends StatefulWidget {
  const pag3_misproductos({super.key});

  @override
  State<pag3_misproductos> createState() => _pag3_misproductosState();
}

class _pag3_misproductosState extends State<pag3_misproductos> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return control.pro[index].cantidad == 0
                        ? Text("")
                        : ListTile(
                            leading: Image(
                                image: NetworkImage(control.pro[index].imagen)),
                            title: Text(control.pro[index].nombre),
                            subtitle: Text("Precio: " +
                                control.pro[index].precio.toString() +
                                "  Cantidad : " +
                                control.pro[index].cantidad.toString()),
                            trailing: Text((control.pro[index].cantidad *
                                    control.pro[index].precio)
                                .toString()),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar : " + control.calcularTotal().toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Divider(),
              ElevatedButton.icon(
                  onPressed: () {
                    Alert(
                        context: context,
                        title: "ATENCION!!",
                        desc: "Compra Realizada Satisfactoriamente",
                        buttons: [
                          DialogButton(
                              child: Text("CERRAR"),
                              onPressed: () {
                                control.limpiarTodo();
                                Navigator.pop(context);
                                control.cambiarposicion(0);
                              })
                        ]).show();
                  },
                  icon: Icon(Icons.payment),
                  label: Text("Comprar")),
                  Divider(),
            ],
          ),
        ));
  }
}
