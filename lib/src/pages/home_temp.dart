// importM - Importar material package
import 'package:flutter/material.dart';

// stle - Crear clase Stateless
class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  // Forma 1: Función privada que retorna listado de Widgets
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
      );

      // Forma normal
      //lista.add(tempWidget);
      //lista.add(Divider());

      // Forma cascada
      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {

    // Se retorna directamente el resultado de .map()
    return opciones.map((item) {

      // Ctrl + .
      // Wrap with Column
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + ' !'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit_sharp),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );

    }).toList();
  }
}
