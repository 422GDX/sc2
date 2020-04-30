import 'package:flutter/material.dart';

//主页面内容
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: MyAppBar(),   //自定义上方AppBar
      drawer: MyDrawer(),   //自定义左侧隐藏导航栏
      body: Center(
        child:Text('主页')
      ),
    );
  }  
}
//自定义上方AppBar
class MyAppBar extends StatefulWidget implements PreferredSizeWidget{
  MyAppBar({Key key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: AppBar(
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
    );
  }
}

//自定义左侧隐藏导航栏
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
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

    );
  }
}