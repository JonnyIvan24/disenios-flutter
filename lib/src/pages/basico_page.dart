import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTiltulo =  TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estiloSubTiltulo =  TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SingleChildScrollView sirve para podre hacer un scroll a la vista o pagina y evitar que se nos desborde la info.
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _texto(),
          _texto(),
          _texto(),
          _texto(),
          _texto(),
          _texto(),

        ],
        ),
      )
    );
  }

  Widget _crearImagen () {
    return Container(
      width: double.infinity,
      child: Image(
        height: 200.0,
        fit: BoxFit.cover,
              image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
    );
  }

  Widget _crearTitulo () {
    /* 
    el SafeArea sirve despliega información en el espacio que es visible en la pantalla
    esto nos srive mucho para evitar el despliege de información en las barras que traen al gunos dispositivos
    como el iPhone X
    */ 
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            // el widget Expanded expande a su hijo para ocupar todo el espacio posible sin afectar los demas elementos
            Expanded(
              child: Column(
                // el crossAxisAligment ordena el contenido de manera vertical
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con un puente', style: estiloTiltulo),
                  SizedBox(height: 7.0),
                  Text('Este lago se encuentra en Ameca XD', style: estiloSubTiltulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones () {
    return Row(
      // mainAxisAlignment funciona para ordenar elementos de manera horizontal en los Row
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion (IconData icon, String text) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0,),
          SizedBox(height: 5.0,),
          Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
        ],
      ),
    );
  }

  Widget _texto () {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text('Minim dolor eiusmod pariatur laboris tempor mollit incididunt et culpa aute minim deserunt elit. Sit laborum mollit occaecat consectetur in officia nulla sunt sit elit. Irure excepteur laborum cupidatat quis pariatur voluptate incididunt in mollit et. Quis excepteur eu minim ut elit eu do enim ea labore aliqua incididunt.',
      textAlign: TextAlign.justify,));
  }

}