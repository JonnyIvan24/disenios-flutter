import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // con esta propiedad podemos cambiar el cambio de pagina de manera horizontal (defecto) o vertical
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );
  }

  Widget _pagina1() {
    // Stack sirve para acomodar los elementos unos encima de otros
    return Stack(
      // el orden de los children hace que los primeros esten al ofondo y los ultimo al frente
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),

      ],
    );
  }

  Widget _pagina2() {
    return Center(
      child: Text('pagina 2'),      
    );
  }

  Widget _colorFondo() {
    return Container(
      //todo el ancho
      width: double.infinity,
      //todo el alto
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      //todo el ancho
      width: double.infinity,
      //todo el alto
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        // hacemos que la imagen cubra todo el espacio
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estiloTexto,),
          Text('Miercoles', style: estiloTexto,),
          // Expanded expande todo el widget hijo a todo el tamaño posible de la pantalla sin desbordar
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }

}