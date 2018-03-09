import 'package:flutter/material.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Levo Pão',
      theme: new ThemeData(primaryColor: Colors.deepPurple[800]),
      home: new MainContent(title: 'Levo Pão')
    );
  }
}

class MainContent extends StatefulWidget {
  MainContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainContentState createState() => new _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: _buildMain()
    );
  }

  Widget _buildMain() {
    return new GridView.count(
      crossAxisCount: 5,
      children: new List<Widget>.generate(10, (it) {
        return new GridTile(child: new Card(
          color: Colors.amber[200],
          child: new Center(child: new Text("Quero pão $it"))
        ));
      }),
    );
  }
}
