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
    return Center(
      child: Text('pagina 1'),
    );
  }

  Widget _pagina2() {
    return Center(
      child: Text('pagina 2'),      
    );
  }

}