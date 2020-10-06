import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){

    //print(menuProvider.opciones);
    menuProvider.cargarData();

    // Un Future tiene varios estados
    // 1. Cuando se está pidiendo información
    // 2. Cuando se resuelve
    // 3. Cuando da un error

    return ListView(
      children: _crearListaItems(),
    );

  }

  List<Widget> _crearListaItems(){

    return [
      ListTile(
        title: Text('Hola Mundo'),
      ),
      Divider(),
      ListTile(
        title: Text('Hola Mundo'),
      ),
      Divider(),
      ListTile(
        title: Text('Hola Mundo'),
      ),
    ];

  }

}