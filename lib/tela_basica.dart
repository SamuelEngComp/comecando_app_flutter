

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'immutable_widget.dart';
import 'tela_menu_lateral.dart';
import 'text_layout.dart';
import 'cap04_perfil.dart';

class TelaBasica extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('App do cafezinho'),
        centerTitle: true,
        actions: <Widget> [
          Padding(padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget> [
          Image.asset('assets/imagens/cafe02.jpg', width: 600, height: 400,),
          TextoLayout(),
        ],
      ),

      drawer: Drawer(
        child: TelaDePerfil(),
      ),
    );
  }
}
