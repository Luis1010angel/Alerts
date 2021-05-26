//import 'dart:html';
//import 'dart:js';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'funciones_page.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFC5C1C1),
        appBar: AppBar(
          title: Text('Cards'),
        ),

        //En el body usaremos el widget "ListView" para que el cuerpo sea en forma de lista
        body: ListView(
          //Lista de Widget. Creamos metodos dentro de un array para usarlo en el widget Card().
          //Recordemos que la propiedad "children: <Widget>" debe tener un array y dentro de el los widget que se van a mostrar
          children: <Widget>[
            card4(),
          ],
        ));
  }

  Card card4() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Color(0xFF9CD0EE),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Card'),
            subtitle: Text(
                'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
            leading: Icon(Icons.home),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text("Alert Dialog"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FuncionesPage()),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }

  //void _alertDialog(BuildContext context) {
  //showDialog(
  //context: context,
  //builder: (BuildContext context) {
  //return AlertDialog(
  //title: Text('Alerta de dialogo'),
  // content: Text('Hola continua'),
  // actions: <Widget>[
  // RaisedButton(
  //    child: Text('salir'),
  //    onPressed: () {
  //    Navigator.of(context).pop('ok');
  //  },
  //  ),
  // ],
  // );
  // },
  // );
  // }
}
