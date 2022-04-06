import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Container(
      //     width: 350,
      //     height: 350,
      //     color: Colors.green,
      //     child: const Align(
      //       // alignment: Alignment.center,
      //       // alignment: Alignment(.5, .5),
      //       alignment: FractionalOffset(.5, .5),
      //       child: Text('Align text'),
      //     ),
      //   ),
      // ),
      body: Scaffold(
        body: Stack(
          children: [
            Align(
              // alignment: Alignment.center,
              // alignment: const FractionalOffset(.2, .2),
              widthFactor: 0.5,
              heightFactor: 0.5,
              alignment: Alignment.bottomRight,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
