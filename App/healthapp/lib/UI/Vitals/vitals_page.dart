import 'package:flutter/material.dart';

class VitalsPage extends StatefulWidget {
  @override
  _VitalsPageState createState() => _VitalsPageState();
}

class _VitalsPageState extends State<VitalsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Box("Record Temperature"),
          Box("Record Blood Pressure"),
          Box("Record Heart Rate"),
          Box("Record Oxygen Saturation Level"),
          Container(
            child: TextField(
              autocorrect: false,
              enableSuggestions: false,
              autofocus: true,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              maxLength: 500,
              decoration: InputDecoration(
                  hintText: 'Say something about your day...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  )),
            ),
            padding: EdgeInsets.all(35),
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              child: Text("Send"),
              color: Colors.redAccent[700],
              onPressed: () {},
            ),
            padding: EdgeInsets.all(35),
          )
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
