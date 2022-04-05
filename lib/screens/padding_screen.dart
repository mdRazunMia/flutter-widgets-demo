import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Padding(
            // padding: EdgeInsets.all(8.0),
            // padding: EdgeInsets.symmetric(
            //   horizontal: 10, //left and right
            //   vertical: 10, // top and bottom
            // ),
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            child: Text(
              'Padding widget',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
