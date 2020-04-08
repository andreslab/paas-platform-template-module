import 'package:flutter/material.dart';
import 'package:paas/model/model_module.dart';
import 'package:paas/providers/provider_module.dart';
import 'package:provider/provider.dart';

class ModuleListWidget extends StatefulWidget {
  /*List<ModuleModel> data;

  ModuleListWidget(this.data);*/

  @override
  _ModuleListWidgetState createState() => _ModuleListWidgetState();
}

class _ModuleListWidgetState extends State<ModuleListWidget> {
  @override
  Widget build(BuildContext context) {
    final moduleInfo = Provider.of<ModuleBar>(context);

    return Container(
        child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    ));
  }
}
