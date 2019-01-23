import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 import 'new1.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home :Scaffold(
        appBar: AppBar(
          title: Text('AGRI CENTER'),
          backgroundColor: Colors.orange,
        ),
        body : MyCustomForm(),
      ),
    );

  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
        DrawerHeader(
        child: Text('Profile'),
    decoration: BoxDecoration(
    color: Colors.blue,
    ),
    ),
    ListTile(
    title: Text('Machinery market'),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Machinery()),
      );
    // Update the state of the app
    // ...
    },
    ),
    ListTile(
    title: Text('Traders section'),
    onTap: () {
    // Update the state of the app
    // ...
    },
    ),
        ListTile(
          title: Text('Expert Section'),

            onTap: () {


            },
            // Update the state of the app
            // ...

        ),
    ],
      ),
    )
    );
  }
  }