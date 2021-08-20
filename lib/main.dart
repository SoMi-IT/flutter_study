import 'package:flutter/material.dart';
import 'package:flutter_study/user.dart';

void main() => runApp(MaterialApp(

    home: MyHomePage(),

    ));

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}//MyHomePage

class _MyHomePageState extends State<MyHomePage> {


  List<User> users = [

    User("Silvano", "Roma"),
    User("Matteo", "Roma"),
    User("Giovanni", "Napoli"),
    User("Elise", "Tolosa"),
    User("JellyBelly", "Tolosa")
  ];


  Widget userTemplate(user) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: <Widget>[
          Text(
            user.name,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600]
            ),
          ),
          SizedBox(height: 6.0),

        ],
      ),
    )
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text ("EHEHEHEH"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: users.map((user) => Text("${user.name} - ${user.city}")).toList(),
      ),
    );
  }
}
