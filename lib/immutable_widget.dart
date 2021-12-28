
import 'package:flutter/material.dart';
import 'main.dart';

class TelaPrincipalWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.amber,
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Container(
          color: Colors.blueGrey,
          child: Padding(
            padding: EdgeInsets.all(50),
            child: _buildShinyCicle(),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCicle(){
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}