import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Box("User Information"),
          Box("Show Vitals History"),
          Box("Options"),
          Box("Log Out"),
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
