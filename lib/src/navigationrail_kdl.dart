import 'package:flutter/material.dart';
import 'package:coocree_select_simuc/package.dart';

class NavigationRailKdl extends StatefulWidget {
  final List<NavigationRailDestination> destinations;
  final User user;

  const NavigationRailKdl({super.key, required this.destinations, required this.user});

  @override
  _NavigationRailKdlState createState() => _NavigationRailKdlState();
}

class _NavigationRailKdlState extends State<NavigationRailKdl> {
  int _selectedIndex = 0;
  bool _isMenuOpen = false;
  final double _menuWidth = 350.0;


  Widget _buildMenu(int index) {
    return Container(
      width: _menuWidth,
      color: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          menuWidgets[index],
        ],
      ),
    );
  }

  void abreFecha(int index){
    setState(() {
      _selectedIndex = index;
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: abreFecha,
            destinations: widget.destinations,
          ),
          _isMenuOpen ? Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: _isMenuOpen ? _menuWidth : 0,
                          child: _buildMenu(_selectedIndex),
                        ),
                      ),
                    ],
                  ),
                ) : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
