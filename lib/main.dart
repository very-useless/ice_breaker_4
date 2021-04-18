import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('For You')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myParentWidget(context);
  }
}

// replace this function with the code in the examples
Widget _myParentWidget(BuildContext context) {
  return Scaffold(
    body:

    Container(

      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 70.0,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'For You', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 18)),
            ]
            ),
            )
          ),

          Container(
            width: 250.0,
            height: 400.0,
            child: new Image.asset("assets/profile_pic_full.png")
          ),

          Container(
            width: 250.0,
            height: 100.0,
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Mark Zukerberg', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 18)),
                  TextSpan(text: "\nDesigner/Developer at MDG IITR", style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black,fontSize: 12)
                  )
                  ],
              ),
            )
          ),

          Container(
            width: 200.0,
            height: 80.0,
            child: RaisedButton(
              color: Colors.green,
              textColor: Colors.black,
              onPressed: null,
              child: Text("Level Up!"),
            )
          )
        ],
      )

  )
    );
}
