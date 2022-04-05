import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          color: Colors.red,
          child: Wrap(
            // wrap will shift the overflow contents to the down to adjust or make the room for the widgets.
            // direction: Axis.vertical,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment
                .center, // just like crossAxisAlignment in row or column
            verticalDirection: VerticalDirection.up, // from bottom to up
            spacing: 10, // left and right of the widget
            runSpacing: 20, // top and bottom of the widget
            textDirection: TextDirection.ltr,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
