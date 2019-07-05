import 'package:flutter/material.dart';

import 'get_version_plugin.dart';

class PluginPage extends StatefulWidget {
  @override
  _PluginPageState createState() => _PluginPageState();
}

class _PluginPageState extends State<PluginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<String>(
        future: GetVersionPlugin.version,
        builder: (c, snapshot) {
          if (!snapshot.hasData) {
            return Container();
          }
          return Text(snapshot.data);
        },
      ),
    );
  }
}
