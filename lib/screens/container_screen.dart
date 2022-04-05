import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.blue,// use color property either in BoxDecoration or in the container itself.
          padding: const EdgeInsets.all(8.0),
          // constraints: const BoxConstraints
          // .expand(), //will take available width and height of the parent.
          // constraints: const BoxConstraints(minWidth: 100, maxWidth: 150),
          // alignment: Alignment.center,//element of the container will be placed in the center of the container.
          // alignment: Alignment.centerLeft,//element of the container will be placed in the center of the container.
          // alignment: Alignment.centerRight,//element of the container will be placed in the center of the container.
          alignment: Alignment
              .center, //element of the container will be placed in the center of the container.
          width: 200, //Either use width and height or Constrains.
          height: 200,
          // transform: Matrix4.rotationZ(0.5),
          decoration: const BoxDecoration(
            color: Colors
                .blue, // if use linearGradient color property is not necessary.
            // border: Border.all(
            //   color: Colors.black,
            //   width: 2.0,
            //   style: BorderStyle.solid,
            // ),
            // borderRadius: BorderRadius.all(
            //   Radius.circular(20),
            // ),
            boxShadow: [
              BoxShadow(color: Colors.red, blurRadius: 4.0, spreadRadius: 2.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            ),
            shape: BoxShape.circle, //Either use shape or usr borderRadius
          ),
          child: const Text(
            "Flutter Container widget.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
