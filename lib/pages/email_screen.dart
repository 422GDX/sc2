import 'package:flutter/material.dart';

//home页面内容
class EmailScreen extends StatelessWidget {
  const EmailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('EMAIL')
      ),
      body: Center(
        child:Text('EMAIL')
      ),
    );
  }
}