//底部导航栏组件
import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/pages_screen.dart';
import 'pages/email_screen.dart';
import 'pages/person_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  
  final _BottomColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(PersonScreen());
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        items: [
          //第一个下边栏按钮
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomColor,
            ),
            title: Text(
              '首页',
              style: TextStyle(color: _BottomColor),
            )
          ),

          //第二个下边栏按钮
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _BottomColor),
            )
          ),

          //第三个下边栏按钮
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _BottomColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _BottomColor),
            )
          ),

          //第四个下边栏按钮
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _BottomColor,
            ),
            title: Text(
              '我的',
              style: TextStyle(color: _BottomColor),
            )
          ),
        ],
        currentIndex: _currentIndex,
        //点击事件
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
    
  }
}