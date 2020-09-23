import 'package:flutter/material.dart';

class SearchAll extends StatefulWidget {
  @override
  _SearchAllState createState() => _SearchAllState();
}

class _SearchAllState extends State<SearchAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Drawer'),
      ),
      body: Container(alignment: Alignment.center, child: Text('data')),
    );
  }
}
