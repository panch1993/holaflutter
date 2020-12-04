import 'dart:io';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Hola"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text(
                  "Platform is [${Platform.operatingSystem.toUpperCase()}]",
                  style: TextStyle(
                    fontSize: 20,
                    shadows: [
                      // Shadow(color: Colors.cyanAccent, offset: Offset(1, 1), blurRadius: 10),
                      Shadow(color: Colors.blue, offset: Offset(-0.1, 0.1), blurRadius: 10),
                      // Shadow(color: Colors.orangeAccent, offset: Offset(-0.3, 0.3), blurRadius: 10),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(6),
                margin: EdgeInsets.all(20),
              )
            ],
          ),
          Expanded(
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.all(16),
              child: ListView(
                children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          ListTile(
                            dense: true,
                            trailing: Icon(
                              Icons.border_bottom,
                              color: Colors.teal,
                            ),
                            title: Text("Bottom navigator"),
                            subtitle: Text('底部导航栏'),
                            onTap: () {
                              Navigator.pushNamed(context, "/bottomNavigator");
                            },
                          ),
                          ListTile(
                            dense: true,
                            trailing: Icon(
                              Icons.format_paint,
                              color: Colors.red,
                            ),
                            title: Text("Easy canvas"),
                            subtitle: Text('绘制'),
                            onTap: () {
                              Navigator.pushNamed(context, "/canvas");
                            },
                          ),
                          ListTile(
                            dense: true,
                            trailing: Icon(
                              Icons.gesture,
                              color: Colors.blueGrey,
                            ),
                            title: Text("Drawing board"),
                            subtitle: Text('手势 & 画板'),
                            onTap: () {
                              Navigator.pushNamed(context, "/gesture");
                            },
                          ),
                          ListTile(
                            dense: true,
                            trailing: Icon(
                              Icons.gesture,
                              color: Colors.blueGrey,
                            ),
                            title: Text("Net work"),
                            subtitle: Text('网络'),
                            onTap: () {
                              Navigator.pushNamed(context, "/network");
                            },
                          ),
                        ],
                        color: Colors.grey[300])
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
