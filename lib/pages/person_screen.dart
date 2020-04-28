import 'package:flutter/material.dart';

//home页面内容
class PersonScreen extends StatelessWidget {
  const PersonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('我的')
      ),
      body: Center(
        child:Text('我的')
      ),
    );
  }
}