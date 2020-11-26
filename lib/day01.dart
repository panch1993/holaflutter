import 'package:flutter/material.dart';

void main() =>
    runApp(FullW(
      datas: List<String>.generate(100, (index) => "Index $index"),
    ));


//12 参数
class FullW extends StatelessWidget {
  final List<String> datas;

  FullW({Key key, @required this.datas}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Hola 构造函数"),
        ),
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(datas[index]),
            );
          },
        ),
      ),
    );
  }

}


//10 LISTVIEW
class HolaListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hola title",
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Hola ListView"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("box"),
            ),
            HoriList(),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("inbox"),
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text("games"),
            ),
          ],
        ),
      ),
    );
  }
}

class HoriList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        color: Colors.lightBlueAccent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Image.network(
              "https://i2.hdslb.com/bfs/archive/2a85077e14630ddb58f0b56d24c0fef8a7517c6f.png@336w_190h.webp",
            ), Image.network(
              "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3302399998,3216746631&fm=26&gp=0.jpg",
            ),
          ],
        )
    );
  }

}

//09 IMAGE
class HolaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hola title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
        ),
        body: Align(
            alignment: Alignment.center,
            child: Container(
              child: Image.network(
                "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3302399998,3216746631&fm=26&gp=0.jpg",
                color: Colors.yellow,
                colorBlendMode: BlendMode.softLight,
                repeat: ImageRepeat.repeatY,
                // fit: BoxFit.scaleDown,
              ),
              height: 400,
              color: Colors.teal,
            )),
      ),
    );
  }
}

//07~08 Container
class Hola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hola title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola"),
        ),
        body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Text(
                "Container",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              alignment: Alignment.bottomRight,
              width: 500,
              height: 300,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
              //color: Colors.lightBlue,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.teal, Colors.amber]),
                border: Border.all(color: Colors.deepOrangeAccent, width: 4),
              ),
            )),
      ),
    );
  }
}

//text
class HolaText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hola title",
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Holo appbar"),
        // ),
        body: Center(
          child: Text(
            "Holo child StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget StatelessWidget",
            textAlign: TextAlign.justify,
            // maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.teal,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.red
            ),
          ),
        ),
      ),
    );
  }
}
