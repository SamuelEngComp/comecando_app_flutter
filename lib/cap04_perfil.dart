

//import 'dart:ui';

import 'package:flutter/material.dart';

//CAP 04 - Placing widgets one after another

class TelaDePerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/imagens/praia.jpg'),
          Transform.translate(offset: Offset(0, 100),
          child: Column(
            children: <Widget>[
              _buildProfileImage(context),
              _buildProfileDetails(context),
              _buildActions(context),
            ],
          ),)
        ],
      ),
    );
  }


  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset('assets/imagens/dog.jpg',fit: BoxFit.fitWidth,),
      ),
    );
  }
  Widget _buildProfileDetails(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Cachorro Ney',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        _buildDetailsRow('Idade', '4'),
        _buildDetailsRow('Status', 'Boom Garoto'),
      ],
    ),
    );
  }
  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40),
          Text(text)
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }



}
