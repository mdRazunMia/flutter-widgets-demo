import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Expanded",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
              ],
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Expanded(
              flex: 2, // take the 2 part of the remaining space.
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Colors.grey.withOpacity(0.5),
                    title: Text("List Tile: $index"),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("List Tile: $index"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
