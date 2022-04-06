import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is text widget',
          style: TextStyle(
            fontSize: 20,
            // color: Colors.blue,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
            // decoration: TextDecoration.underline,
            decoration: TextDecoration.combine(
              [
                TextDecoration.underline,
                TextDecoration.overline,
              ],
            ),
            decorationThickness: 2.0,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2.0,
            wordSpacing: 4.0,
            shadows: const [
              Shadow(
                color: Colors.black,
                blurRadius: 2.0,
                offset: Offset(4, 1),
              ),
            ],
            // fontFamily:
            foreground: Paint()
              ..color = Colors.red
              ..strokeWidth = 2.0
              ..style = PaintingStyle.stroke,
          ),
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
