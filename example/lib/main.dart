import 'package:flutter/material.dart';
import 'package:coocree_select_simuc/package.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavigationRail com Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const NavigationRailKdl(
        destinations: [
          NavigationRailDestination(
            icon: Icon(Icons.add_circle),
            label: Text('Cadastrar'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.adjust),
            label: Text('Manutenção'),
          ),
        ],

      ),
    );
  }
}
