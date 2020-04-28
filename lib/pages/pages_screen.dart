import 'package:flutter/material.dart';

//home页面内容
class PagesScreen extends StatelessWidget {
  const PagesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('PAGES')
      ),
      body: Center(
        child:Text('PAGES')
      ),
    );
  }
}