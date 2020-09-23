import 'package:flutter/material.dart';
import 'package:wechat/bean/event/ThemeEvent.dart';
import 'package:wechat/tools/Constants.dart';
import 'package:wechat/tools/DataUtils.dart';
import 'package:wechat/tools/ThemeColors.dart';

class MyTheme extends StatefulWidget {
  createState() => new MyThemeState();
}

class MyThemeState extends State<MyTheme> {
  List<Color> colors = ThemeColors.supportColors;
  Color themeColor = ThemeColors.currentColorTheme;

  changeThemeColor(Color c) {
    Constants.eventBus.fire(new ThemeEvent(c));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('切换主题', style: new TextStyle(color: Colors.white)),
        backgroundColor: themeColor,
      ),
      body: new Padding(
        padding: const EdgeInsets.all(4.0),
        child: new GridView.count(
          crossAxisCount: 4,
          children: new List.generate(colors.length, (index) {
            return new InkWell(
              onTap: () {
                ThemeColors.currentColorTheme = colors[index];
                DataUtils.setColorTheme(index);
                changeThemeColor(colors[index]);
                setState(() {
                  themeColor = colors[index];
                });
              },
              child: new Container(
                color: colors[index],
                margin: const EdgeInsets.all(3.0),
              ),
            );
          }),
        ),
      ),
    );
  }
}
