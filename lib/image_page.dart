import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            width: 500,
            height: 500,
            child: Image.network(
                "https://raw.githubusercontent.com/kikt-blog/image/master/img/20190704171705.png"),
          ),
        ],
      ),
    );
  }
}
