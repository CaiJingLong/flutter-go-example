import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: _buildItem,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return Container(
      width: 100,
      child: ListTile(
        title: Text(index.toString()),
      ),
    );
  }
}
