import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  createState() => new DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(title: new Text("")),
      body: new Container(
        alignment: Alignment.bottomCenter,
        child: new TextField(),
      ),
    );
  }
}
