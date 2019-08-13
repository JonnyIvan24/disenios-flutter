import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenios_flutter/src/pages/basico_page.dart';
import 'package:disenios_flutter/src/pages/scroll_page.dart';
import 'package:disenios_flutter/src/pages/botones_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // con PlatForm podemos indicar una condición para ejecutar codigo diferente en caso que se ocupe
    // para diferenciar entre plataformas, en este caso android y ios
    if (Platform.isAndroid) {
      // cambiamos el statusBarColor (barra superior) a transparente
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
      ));
    } else if (Platform.isIOS) {
      // cambiamos el statusBarColor (barra superior) a blanco
      // solo que en los dispositivos ios lo que cambian de color son las letras
      SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
      ));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}