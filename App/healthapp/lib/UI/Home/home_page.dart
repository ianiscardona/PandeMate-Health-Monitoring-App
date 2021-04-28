import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Box("Record Vitals"),
          Box("Show Messages"),
        ],
      ),
      color: Colors.teal[700],
    );
  }
}

class Box extends StatelessWidget {
  final String name;

  const Box(this.name);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(name),
      style: ElevatedButton.styleFrom(
          primary: Colors.redAccent[700],
          onPrimary: Colors.black,
          elevation: 5),
      onPressed: () {
        print('Hello Ele');
      },
      onLongPress: () {
        print('Peepepoooo');
      },
    );
  }
}
