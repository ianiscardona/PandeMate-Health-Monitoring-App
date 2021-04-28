import 'package:flutter/material.dart';
import 'package:healthapp/UI/Account/account_page.dart';
import 'package:healthapp/UI/Home/home_page.dart';
import 'package:healthapp/UI/Vitals/vitals_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PandeMate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'PandeMate Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              VitalsPage(),
              new Container(
                color: Colors.teal[700],
              ),
              AccountPage(),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.medical_services_outlined),
              ),
              Tab(
                icon: new Icon(Icons.message_outlined),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              )
            ],
            labelColor: Colors.redAccent[100],
            unselectedLabelColor: Colors.blueGrey[600],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
