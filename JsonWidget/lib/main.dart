import 'package:flutter/material.dart';

import 'expanded_example.dart';

//import './mywidget.dart' as generated
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Json Widget'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          ListTile(leading: Icon(Icons.code), title: Text('Flutter Examples')),
          ListTile(
            title: Text('Expanded widget'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExpandedExample()));
            },
          )
        ],
      ),
    );
  }
}
