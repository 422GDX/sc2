import 'package:flutter/material.dart';

//主页面内容
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('主页'),
        /*
        leading: IconButton(
          icon: Icon(Icons.menu), 
          tooltip: 'Native Menu',
          onPressed: () => debugPrint('Navigreation button is pressed'),
        ),
        */
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed'),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'More',
            onPressed: () => debugPrint('More button is pressed'),
          )
        ],
      ),
      //左侧隐藏导航栏
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                //color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("lib/images/background.jpg"),
                  fit: BoxFit.fill
                ),
              ),
            ),
            ListTile(
              title: Text('人族', textAlign: TextAlign.left),
              //trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              trailing: Image.asset("lib/images/Terran.jpg"),
              onTap: () => Navigator.pop(context)
            ),
            ListTile(
              title: Text('神族', textAlign: TextAlign.left),
              //trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              trailing: Image.asset("lib/images/Protoss.jpg"),
              onTap: () => Navigator.pop(context)
            ),
            ListTile(
              title: Text('虫族', textAlign: TextAlign.left),
              //trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              trailing: Image.asset("lib/images/Zerg.jpg"),
              onTap: () => Navigator.pop(context)
            ),
          ],
        )
      ),
      body: Center(
        child:Text('主页')
      ),
    );
  }  
}