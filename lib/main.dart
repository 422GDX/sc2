import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SC2 Demo',
      theme: ThemeData.light(),
      //新建BottomNavigationWidget，在lib目录下新建dart文件
      home: BottomNavigationWidget(),
      //
    );
  }
}