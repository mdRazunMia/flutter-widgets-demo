import 'package:flutter/material.dart';

class CenterScreen extends StatelessWidget {
  const CenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        heightFactor:
            2, //multiply the height of the text widget by two and determine the center position for the widget.
        widthFactor:
            2, //multiply the width of the text widget by two and determine the center position for the widget.
        child: Text(
          'Flutter text widget.',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
