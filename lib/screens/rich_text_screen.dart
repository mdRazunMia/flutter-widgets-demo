import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  RichTextScreen({Key? key}) : super(key: key);
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint("hello World");
    };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
              text: "Don't have an account",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: "Share",
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: _gestureRecognizer,
                ),
                const WidgetSpan(
                  child: Icon(
                    Icons.share,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              ]),
        ),
      ),
    );
  }
}
