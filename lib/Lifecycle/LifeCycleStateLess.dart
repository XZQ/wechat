import 'package:flutter/material.dart';
import 'package:wechat/Lifecycle/GoStatefulWidget.dart';
import 'package:wechat/Lifecycle/GoStatelessWidget.dart';
import 'package:wechat/tools/Log.dart';
import 'package:wechat/tools/ThemeColors.dart';

class LifeCycleStateLess extends StatelessWidget {
  LifeCycleStateLess() {
    Log.e("TAG", "LifeCycleStateLess 构造");
  }

  @override
  Widget build(BuildContext context) {
    Log.e("TAG", "LifeCycleStateLess build");
    return Scaffold(
      appBar: new AppBar(
        title: new Text('LifeCycleStateLess',
            style: new TextStyle(color: Colors.white)),
        backgroundColor: ThemeColors.currentColorTheme,
        elevation: 0.0,
      ),
      body: new Container(
        child: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new MaterialButton(
                child: Text("go StatelessWidget"),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
                    return new GoStatelessWidget();
                  }));
                },
                textColor: Colors.blue,
                color: Color(0xFF82B1FF),
              ),
              new MaterialButton(
                child: Text("go StatefulWidget"),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
                    return new GoStatefulWidget();
                  }));
                },
                textColor: Colors.blue,
                color: Color(0xFF82B1FF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
