import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkPage extends StatefulWidget {
  NetworkPage({Key key}) : super(key: key);

  @override
  _NetworkPageState createState() {
    return _NetworkPageState();
  }
}

class _NetworkPageState extends State<NetworkPage> {
  var info = "wait";

  @override
  void initState() {
    super.initState();
    getHttp();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("net work"),
        ),
        body: SingleChildScrollView(
          child: Text(
            info,
            //style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  void getHttp() async {
    try {
      Response response = await Dio().get("http://www.baidu.com");
      setState(() {
        info = "response.toString()";
      });
    } catch (e) {
      print(e);
    }
  }
}
