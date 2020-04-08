import 'package:flutter/material.dart';
import 'package:paas/providers/provider_module.dart';
import 'package:provider/provider.dart';

class ModuleActionBarWidget extends StatefulWidget {
  final int menu;
  ModuleActionBarWidget({this.menu});

  @override
  _ModuleActionBarWidgetState createState() => _ModuleActionBarWidgetState();
}

class Categories {
  int id;
  String name;
  Categories(this.id, this.name);
}

class RangeValue {
  int id;
  String name;
  RangeValue(this.id, this.name);
}

class RangeDate {
  int id;
  String name;
  RangeDate(this.id, this.name);
}

class _ModuleActionBarWidgetState extends State<ModuleActionBarWidget> {
  List<Categories> categories = [
    Categories(0, "cat 1"),
    Categories(1, "cat 2"),
    Categories(2, "cat 3"),
    Categories(3, "cat 4"),
  ];
  List<RangeValue> rangeValues = [
    RangeValue(0, "0 - 10"),
    RangeValue(1, "10 - 20"),
    RangeValue(2, "20 - 30"),
    RangeValue(3, "30 - .."),
  ];
  List<RangeDate> rangeDates = [
    RangeDate(0, "last 3 days"),
    RangeDate(1, "last week"),
    RangeDate(2, "last 30 days"),
    RangeDate(3, "last 3 month"),
  ];

  String categoryHint = "Seleccione Categoria";
  String rangeValueHint = "Rango de valores";
  String rangeDateHint = "Rango de fecha";

  Categories dropDownCategory;
  RangeValue dropDownValue;
  RangeDate dropDownDate;

  @override
  Widget build(BuildContext context) {
    final moduleInfo = Provider.of<ModuleBar>(context);

    Widget moduleBar = Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
              child: Text("Nuevo"),
              onPressed: () => moduleInfo.indexPage = 1),
        ],
      ),
    );

    List<Widget> bars = <Widget>[moduleBar];

    return Container(height: 80, color: Colors.blue, child: bars[widget.menu]);
  }
}
