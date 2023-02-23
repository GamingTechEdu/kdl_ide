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
      home: NavigationRailWithMenu(),
    );
  }
}


class NavigationRailWithMenu extends StatefulWidget {
  @override
  _NavigationRailWithMenuState createState() => _NavigationRailWithMenuState();
}

class _NavigationRailWithMenuState extends State<NavigationRailWithMenu> {
  int _selectedIndex = 0;

  final List<Widget> _menuOptions = [
    DrawerInclude(),
    SimucFixDrawer(),
    ListTile(title: Text('Opção 3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            elevation: 1,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          Container(
            child: _menuOptions[_selectedIndex],
          ),
        ],
      ),
    );
  }
}

// import 'package:coocree_select_simuc/package.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//    final Drawer1 _drawer1 = Drawer1();
//    final Drawer2 _drawer2 = Drawer2();
//
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Conteúdo da tela aqui"),
//       ),
//         endDrawer: _selectedIndex == 0 ? _drawer1 : _drawer2,
//       bottomNavigationBar: Row(
//         children: [
//           NavigationRail(
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (int index) {
//               if(_selectedIndex == 0){
//                  _drawer1;
//               }else if(_selectedIndex == 1){
//                 _drawer2;
//               }
//             },
//             destinations: [
//               NavigationRailDestination(
//                 icon: Image.asset(
//                   'assets/testeicon.png',
//                   width: 40,
//                   height: 40,
//                 ),
//                 label: const Text('Cadastrar'),
//               ),
//               NavigationRailDestination(
//                 icon: Image.asset(
//                   'assets/chaveicon.png',
//                   width: 40,
//                   height: 40,
//                 ),
//                 label: const Text('Cadastrar'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// Scaffold(
// body: Stack(
// children: [
// Row(
// children: [
// NavigationRail(
// minWidth: 50,
// backgroundColor: Colors.grey,
// destinations: [
// NavigationRailDestination(
// icon: Image.asset(
// 'assets/testeicon.png',
// width: 40,
// height: 40,
// ),
// label: Text('Cadastrar'),
// ),
// NavigationRailDestination(
// icon: Image.asset(
// 'assets/chaveicon.png',
// width: 40,
// height: 40,
// ),
// label: const Text('Cadastrar'),
// )
// ],
// selectedIndex: _selectedIndex,
// onDestinationSelected: (int index) {
// setState(() {
// _selectedIndex = index;
// });
// if (_selectedIndex == 0) {
// scaffoldKey.currentState?.drawers[0];
// }
// },
// ),
// ],
// ),
// ]),
// );

// Scaffold(
// body: Center(
// child: Text('Meu text'),
// ),
// endDrawer: drawers[0],
// bottomNavigationBar: NavigationRail(
// backgroundColor: Colors.red,
// destinations: [
// NavigationRailDestination(
// icon: Image.asset(
// 'assets/chaveicon.png',
// width: 40,
// height: 40,
// ),
// label: const Text('Cadastrar'),
// ),
// NavigationRailDestination(
// icon: Image.asset(
// 'assets/chaveicon.png',
// width: 40,
// height: 40,
// ),
// label: const Text('Cadastrar'),
// ),
// ],
// onDestinationSelected: (int index){
// Navigator.pop(context);
// Scaffold.of(context).openEndDrawer();
// }, selectedIndex: null,
// ),
// );
