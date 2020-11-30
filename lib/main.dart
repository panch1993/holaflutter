import 'package:flutter/material.dart';
import 'package:hola_flutter/bottom_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
        ),
        body: Card(
          child: MainPage(),
          margin: EdgeInsets.all(15),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Bottom navigator"),
          subtitle: Text('底部导航栏'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BottomPageWidget()));
          },
        ),
        Divider()
      ],
    );
  }
}
