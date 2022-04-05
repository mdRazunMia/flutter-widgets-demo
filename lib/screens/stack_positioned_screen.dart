import 'package:flutter/material.dart';

class StackPositionedScreen extends StatelessWidget {
  const StackPositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 700,
          color: Colors.grey,
          child: Stack(
            // clipBehavior: Clip.hardEdge,
            // overflow: Overflow.visible,
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Positioned(
                // top: 0,
                //only two value at a time.
                //vertical: top, bottom, height
                //horizontal:  left, right, width
                // height: ,// will override the height of it's children.
                bottom: 0,
                right: 0,
                // left: ,
                // width: ,// will override the width of it's children.
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
