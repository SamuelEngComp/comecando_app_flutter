import 'package:flutter/material.dart';


class TextoLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          const Text(
            'Hello, World!',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'LibreBaskerville',
                fontSize: 26),
          ),
          const Text(
            'Text can wrap without issue',
            style: TextStyle(fontFamily: 'LibreBaskerville', fontSize: 18),
                //Theme.of(context).textTheme.headline6,
          ),
//make sure the Text below is all in one line:
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing '
            'elit. Etiam at mauris massa. Suspendisse potenti.'
                'Aenean aliquet eu nisl vitae tempus.',
            style: TextStyle(fontFamily: 'LibreBaskerville'),
          ),

        Divider(),

        RichText(
          text: TextSpan(
            text: 'Flutter text is ',
            style: TextStyle(fontFamily: 'LibreBaskerville', fontSize: 16, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'really ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                    text: 'powerful.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.double,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )

      ],
    );
  }
}
