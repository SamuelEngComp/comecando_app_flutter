import 'package:flutter/material.dart';


class MenuLateral extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text(
            'Menu Lateral aqui!!!!',
          style: TextStyle(fontFamily: 'LibreBaskerville', fontSize: 16),
        ),
      ),
    );
  }
}
