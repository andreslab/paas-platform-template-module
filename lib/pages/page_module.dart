import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/bar/bar_module.dart';
import '../widgets/widget_module.dart';

class ModulePage extends StatefulWidget {
  @override
  _ModulePageState createState() => _ModulePageState();
}

class _ModulePageState extends State<ModulePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ModuleActionBarWidget(menu: 0,),
          Expanded(
            child: Container(
              child: ModuleMainWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
