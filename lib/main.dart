import 'package:flutter/material.dart';
import 'package:paas/providers/provider_module.dart';
import 'package:provider/provider.dart';
import 'navigator.dart';
import 'pages/page_module.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ModuleBar(),),
      ],
      
      child: MaterialApp(
        title: "Flutter Demo",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: NavigatorPage(),
        routes: {
          "module": (context) => ModulePage(),
        },
      ),
    );
  }
}
