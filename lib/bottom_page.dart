//底部导航栏页面
import 'package:flutter/material.dart';
import 'package:hola_flutter/simple_page.dart';

class BottomPageWidget extends StatefulWidget {
  BottomPageWidget({Key key}) : super(key: key);

  @override
  _BottomPageWidgetState createState() {
    return _BottomPageWidgetState();
  }
}

class _BottomPageWidgetState extends State<BottomPageWidget> {
  final _defaultColor = Colors.teal;
  int _position = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(SimplePageWidget(info: "Games"))
      ..add(SimplePageWidget(info: "Body"))
      ..add(SimplePageWidget(info: "Otto"))
      ..add(SimplePageWidget(info: "Inbox"));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom navigator page"),
          backgroundColor: _defaultColor,
        ),
        body: list[_position],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: _defaultColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.games), title: Text("Games")),
            BottomNavigationBarItem(icon: Icon(Icons.accessibility_new), title: Text("Body")),
            BottomNavigationBarItem(icon: Icon(Icons.accessible_forward), title: Text("Otto")),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), title: Text("Inbox")),
          ],
          currentIndex: _position,
          type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              _position = value;
            });
          },
        ),
      ),
    );
  }
}
