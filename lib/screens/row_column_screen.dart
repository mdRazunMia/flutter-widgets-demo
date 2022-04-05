import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200, //this will be the height of the container.
          color: Colors.red,
          child: Row(
            // mainAxisSize: MainAxisSize.min,// take the size that only required by the child
            mainAxisSize: MainAxisSize
                .max, // take the size that only required by the child. In that case it will take the full width.
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
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
            ],
          ),
        ),
      ),
    );
  }
}
