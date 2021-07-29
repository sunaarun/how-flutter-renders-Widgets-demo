import 'package:flutter/material.dart';

final style = TextStyle(fontSize: 48);
void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Center(
          child: MyApp(),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var switchTree = true;
  Widget get firstTree =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        RichText(text: TextSpan(text: "Hello Dart", style: style)),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          'lib/assets/dart.png',
          width: 45,
        )
      ]);
  Widget get secondTree =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //CircularProgressIndicator(),
        RichText(text: TextSpan(text: "Hello Flutter", style: style)),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          'lib/assets/flutter.png',
          width: 45,
        )
      ]);

  Widget get switchButton => InkWell(
      splashColor: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: RichText(
          text: TextSpan(text: 'Switch Tree'),
        ),
      ),
      onTap: () => setState(() => switchTree = !switchTree));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Container(
            child: switchTree ? firstTree : secondTree,
          ),
          SizedBox(
            width: 20,
            height: 100,
          ),
          switchButton,
        ],
      ),
    );
  }
}
