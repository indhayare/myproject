import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cheese.dart';
import 'fries.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Page Navigation",
    home: facebook(),
  ));
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Follow Our Page",
          style:
          TextStyle(
            color: Colors.white,
            fontSize: 18,
            ),
        ),
        backgroundColor: Color(0xff1DA1F2),
      ),
       body: WebView(
          initialUrl: 'https://www.facebook.com/wowpizza',
          javascriptMode: JavascriptMode.unrestricted,
        ),
    );     
  }
}
