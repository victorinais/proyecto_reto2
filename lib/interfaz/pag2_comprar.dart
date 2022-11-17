import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_reto2/controlador/controladorGeneral.dart';

class pag2_comprar extends StatefulWidget {
  const pag2_comprar({super.key});

  @override
  State<pag2_comprar> createState() => _pag2_comprarState();
}

class _pag2_comprarState extends State<pag2_comprar> {
  controladorGeneral control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => ListView.builder(
            itemCount: control.pro.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(image: NetworkImage(control.pro[index].imagen)),
                title: Text(control.pro[index].nombre +
                    " │ " +
                    control.pro[index].precio.toString()),
                trailing: Text(
                  control.pro[index].cantidad.toString(),
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = control.pro[index].cantidad + 1;
                          control.cambiarcantidad(index, nuevaCantidad);
                          control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_up_outlined)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int nuevaCantidad = control.pro[index].cantidad - 1;
                          if (nuevaCantidad < 0){
                            nuevaCantidad = 0;
                          }
                          control.cambiarcantidad(index, nuevaCantidad);
                          control.pro.refresh();
                        },
                        icon: Icon(Icons.arrow_circle_down_outlined))
                  ],
                ),
              );
            },
          )),
    );
  }
}
