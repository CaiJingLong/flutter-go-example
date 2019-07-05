import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const/resource.dart';

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
              "https://github.com/kikt-blog/image/raw/master/weibo/844036b9ly1fxyaoiamp0j21x80m8wlb.jpg",
            ),
          ),
          _buildDivider(),
          Container(
            width: 500,
            height: 500,
            child: Image.file(File("/Users/cai/Desktop/auto-angle.jpg")),
          ),
          _buildDivider(),
          Container(
            width: 500,
            height: 500,
            child: Image.memory(
              Uint8List.fromList(
                File("/Users/cai/Desktop/auto-angle.jpg").readAsBytesSync(),
              ),
            ),
          ),
          _buildDivider(),
          Container(
            width: 500,
            height: 500,
            child: Image.asset(R.ASSETS_HAVE_EXIF_JPG),
          ),
        ],
      ),
    );
  }
}

Widget _buildDivider() {
  return Container(
    height: 20,
    child: Text("divider"),
    decoration: BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.red,
      ),
    ),
  );
}
