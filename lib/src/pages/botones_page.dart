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
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
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

  Widget _bottomNavigationBar(BuildContext context) {

    // con Theme podemos cambiar o perzonalizar un widget que por defecto ya tiene una perzonalización y no es posible hacerla
    return new Theme(
      data: Theme.of(context).copyWith(
        // cambio de color de fondo del widget en este caso el BottomNavigationBar
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        // cambio de color primario (color de los iconos seleccionados)
        primaryColor: Colors.pinkAccent,
        // cambio de color del texto (color de los iconos no seleccionados)
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )
        ],
      ),
    );
  }

}