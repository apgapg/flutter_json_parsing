import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_parsing/sample_model.dart';
import 'package:flutter_json_parsing/strings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SampleModel sampleModel;
  final textStyle = TextStyle(fontSize: 18.0);

  @override
  void initState() {
    super.initState();
    sampleModel = new SampleModel.fromJson(json.decode(Strings.SAMPLE_JSON));
    assert(sampleModel != null);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
          child: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("id: " + sampleModel.id, style: textStyle),
          Text("name: " + sampleModel.name, style: textStyle),
          Text("nickname: " + sampleModel.nickname, style: textStyle),
          Text("avatar: " + sampleModel.nickname, style: textStyle),
          Text("profileComplete: " + (sampleModel.profileComplete ? "Yes" : "No"), style: textStyle),
        ],
      )),
    );
  }
}
