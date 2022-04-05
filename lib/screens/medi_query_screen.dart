import 'package:flutter/material.dart';

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxSized = size.shortestSide - 50;
    return SafeArea(
      //it will keep the safeArea out of the status bar.
      child: Scaffold(
        body: Center(
          // child: Row(
          //   children: [
          //     Container(
          //       color: Colors.red,
          //       width: size.width / 2,
          //       height: size.width / 2,
          //       child: const Text('hello Media Query'),
          //     ),
          //     Container(
          //       color: Colors.green,
          //       width: size.width / 2,
          //       height: size.width / 2,
          //       child: const Text('hello Media Query'),
          //     ),
          //   ],
          // ),
          // child: Container(
          //   width: size.shortestSide,
          //   height: size.shortestSide,
          //   color: Colors.red,
          // ),

          //for orientation
          child: Builder(builder: (context) {
            if (orientation.index == Orientation.landscape.index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.width / 2,
                    width: boxSized,
                    color: Colors.red,
                  ),
                  Container(
                    height: size.width / 2,
                    width: boxSized,
                    color: Colors.orange,
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.width / 2,
                    width: boxSized,
                    color: Colors.red,
                  ),
                  Container(
                    height: size.width / 2,
                    width: boxSized,
                    color: Colors.orange,
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
