import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screens/facebook.dart';
import 'package:screens/twitter.dart';
import 'cheese.dart';
import 'fries.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Page Navigation",
    home: vegetables(),
  ));
}

class vegetables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wow Pizza",
          style:
          TextStyle(
            fontSize: 18,
            color: Colors.white,
            ),
        ),
        backgroundColor: Color(0xffC00104),
        actions: [
          IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => twitter()));
            },
            icon: Icon(FontAwesomeIcons.twitter),
          ),
          IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => facebook()));
            },
            icon: Icon(FontAwesomeIcons.facebook),
          ),
        ],
      ),
      body: Center(
          child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Center(
                child: Container(
                  child: OutlineButton(
                    child: new Text(
                      "Vegetable Pizza",
                      style: TextStyle(
                        color: Color(0xffC00104),
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    borderSide: BorderSide(
                      color: Color(0xffC00104),
                    ),
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => vegetables()));
            },
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: OutlineButton(
                  child: new Text(
                    "Cheese Pizza",
                    style: TextStyle(
                      color: Color(0xffC00104),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xffC00104),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => cheese()));
            },
                ),
              ),
              
              SizedBox(
                width: 10,
              ),
              Container(
                child: OutlineButton(
                  child: new Text(
                    "Fries Pizza",
                    style: TextStyle(
                      color: Color(0xffC00104),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xffC00104),
                  ),
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => fries()));
            },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 500.0,
          width: 400.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pizza.jpg'),
            ),
          ),
        ),

        RichText(
      text: TextSpan(
        text: 'Hi im the Pizza Assistant,',
        style: TextStyle(
          color: Color(0xff262526),
          fontSize: 24.0,
          ),
      ),

    ),
    RichText(
      text: TextSpan(
        text: 'what Can i help you order?',
        style: TextStyle(
          color: Color(0xff262526),
          fontSize: 24.0,
          ),
      ),
    ),

        // Container(
        //     margin: EdgeInsets.all(5),
        //     child: RaisedButton(
        //       color: Colors.green,
        //       textColor: Colors.white,
        //       splashColor: Colors.grey,
        //       padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        //       onPressed: () {
        //         Navigator.pop(context, MaterialPageRoute(builder: (context) => cheese()));
        //       },
        //       child: Text('Cheese Page'),
        //     )
        //     ),

      ]
      )
      ),
    );
  }
}
