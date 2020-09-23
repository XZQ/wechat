import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> mytabs = <String>[
      '微软',
      '苹果',
      '谷歌',
      '阿里',
    ];

    return new DefaultTabController(
      length: mytabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: new TabBar(
            isScrollable: true,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            labelStyle: new TextStyle(fontSize: 14.0),
            unselectedLabelColor: Colors.white54,
            indicatorWeight: 2.0,
            indicatorPadding: new EdgeInsets.only(bottom: 5.0),
            unselectedLabelStyle: new TextStyle(fontSize: 14.0),
            tabs: mytabs.map((String str) {
              return new Tab(
                text: str,
              );
            }).toList(),
          ),
        ),
        body: new ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "今天",
                      style: new TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    new Text("2.02",
                        style: new TextStyle(
                            color: Colors.green,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "02:20",
                      style: new TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    new Text(
                      "银行卡提现",
                      style: new TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
