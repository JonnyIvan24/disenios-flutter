import 'package:flutter/material.dart';

import 'dart:math';


class BotonesPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
              ],
            ),
          )
        ],
      )
    );
  }

  // parte oscura o fondo principal
  Widget _fondoApp() {

    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        // ingresamos el tipo de gradiente que queremos en este caso un linear
        gradient: LinearGradient(
          // donde empieza el gradiente
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    // el transform.rotate gira un elemento
    final cajaRosada = Transform.rotate(
      angle: -pi /5.0,
      child: Container(
        height: 330.0,
        width: 330.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        // posisiona un elemento de manera que nosotros queramos
        Positioned(
          top: -100.0,
          child: cajaRosada,
        )
      ],
    );

  }

  Widget _titulos() {


    return SafeArea(

      // se recomienda siempre englobar los elementos dentro de un container para poder agregar paddings y otras caracteristicas
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
            style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Classify this transaction into particular category',
            style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

}