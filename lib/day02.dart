import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 02 App"),
        ),
        body: CardW(),
      ),
    );
  }
}

class JumpSub extends StatelessWidget {
  final DataTest data;

  JumpSub({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Sub by push $data"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context, "back message ======");
          },
          child: Text("back with message"),
        ),
      ),
    );
  }
}

class CardW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(30),
      borderOnForeground: false,
      shadowColor: Colors.teal,
      child: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Jump sub page"),
              subtitle: Text("Sub title"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JumpSub()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Jump with params"),
              subtitle: Text("Sub title"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => JumpSub(
                              data: DataTest("text", 34),
                            )));
              },
            ),
            Divider(),
            ListTile(
                title: Text("Jump wait message"),
                subtitle: Text("Sub title"),
                onTap: () {
                  _navigatorAsyn(context);
                }),
            Divider(),
          ],
        ),
      ),
    );
  }

  _navigatorAsyn(BuildContext context) async {
    var result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => JumpSub(
                  data: DataTest("await", 34),
                )));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class FlameLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomCenter,
      //alignment: FractionalOffset(0.5,0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606465662820&di=76978559f58430a4ad3b1c0b99cbdede&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201408%2F07%2F213601f2xz7usscm2z1mjh.jpg",
          ),
          radius: 100,
        ),
        Positioned(
          child: Text(
            "Text of img",
            style: TextStyle(color: Colors.orange),
          ),
          top: 20,
          right: 30,
        )
      ],
    );
  }
}

class ColW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          color: Colors.lightBlueAccent,
          child: Text("Bt1dsfadsfadfs"),
        ),
        Expanded(
            child: RaisedButton(
          onPressed: () {},
          color: Colors.green,
          child: Text("Bt2"),
        )),
        RaisedButton(
          onPressed: () {},
          color: Colors.yellow,
          child: Text("Bt3"),
        ),
      ],
    );
  }
}

class RowW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          color: Colors.lightBlueAccent,
          child: Text("Bt1"),
        ),
        Expanded(
            child: RaisedButton(
          onPressed: () {},
          color: Colors.green,
          child: Text("Bt2"),
        )),
        RaisedButton(
          onPressed: () {},
          color: Colors.yellow,
          child: Text("Bt3"),
        ),
      ],
    );
  }
}

class HolaGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid"),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(2),
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 5,
          childAspectRatio: 2,
          children: <Widget>[
            Image.network(
                "https://i2.hdslb.com/bfs/archive/2a85077e14630ddb58f0b56d24c0fef8a7517c6f.png@336w_190h.webp",
                fit: BoxFit.cover),
            Image.network(
              "https://i0.hdslb.com/bfs/archive/e83cd8f85f4df0dcaa0b5091b6eed467867554dd.jpg@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i0.hdslb.com/bfs/archive/e83cd8f85f4df0dcaa0b5091b6eed467867554dd.jpg@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i0.hdslb.com/bfs/archive/e83cd8f85f4df0dcaa0b5091b6eed467867554dd.jpg@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i2.hdslb.com/bfs/archive/7e01f55b1963b6bb8cdaf7d127df76d30183c7c2.png@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i0.hdslb.com/bfs/archive/3c106333f0dde5ed7bd774cfc794f43445859046.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i2.hdslb.com/bfs/archive/7e01f55b1963b6bb8cdaf7d127df76d30183c7c2.png@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i2.hdslb.com/bfs/archive/7e01f55b1963b6bb8cdaf7d127df76d30183c7c2.png@336w_190h.webp",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i2.hdslb.com/bfs/archive/7e01f55b1963b6bb8cdaf7d127df76d30183c7c2.png@336w_190h.webp",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class DataTest {
  final String text;
  final int id;

  DataTest(this.text, this.id);
}
