import 'package:flutter/material.dart';
import 'package:paas/providers/provider_module.dart';
import 'package:provider/provider.dart';
import '../api/api_module.dart';
import 'widget_module_list.dart';

class ModuleMainWidget extends StatefulWidget {
  /* final int ModuleCount;

  const ModuleMainWidget({Key key, this.ModuleCount}): super(key: key);
 */
  @override
  _ModuleMainWidgetState createState() => _ModuleMainWidgetState();
}

class _ModuleMainWidgetState extends State<ModuleMainWidget> {
  final _moduleAPI = ModuleAPI();
  var moduleCount = 0;

  _loadModule() async {
    //call request
    final res = await _moduleAPI.getManagerByBusiness(context);

    if (res != null) {
      print("OK");
      setState(() {
        moduleCount = res.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadModule();

    final moduleInfo = Provider.of<ModuleBar>(context);

    List<Widget> pages = [
      PageView(
        children: <Widget>[ModuleListWidget()],
      ),
      Container(
        child: Text("Pagina 1"),
      ),
      Container(
        child: Text("Pagina 2"),
      ),
    ];

    return Container(color: Colors.white, child: pages[moduleInfo.indexPage]);
  }

  Widget module(String label, bool isActive) => Container(
          child: Row(
        children: <Widget>[
          Text(label),
          Checkbox(
            value: isActive,
            onChanged: (bool value) {
              /*setState(() {
                                isActiveModule = value;
                              });*/
              print("...");
            },
          )
        ],
      ));
}
