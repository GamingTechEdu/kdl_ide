import 'package:flutter/material.dart';
import 'package:coocree_select_simuc/package.dart';

class NavigationrailKdl extends StatefulWidget {
  @override
  _NavigationrailKdlState createState() => _NavigationrailKdlState();
}


class _NavigationrailKdlState extends State<NavigationrailKdl> {

  int _selectedIndex = 0;
   bool _isMenuOpen = false;
   double _menuWidth = 350.0;


  Widget _buildMenu(int index) {
    return Container(
        width: _menuWidth,
        color: Colors.grey[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SimucFixDrawer(),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
                if(_selectedIndex == 0){
                  _isMenuOpen = !_isMenuOpen;
                }
              });
            },
            destinations: const [
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
          _isMenuOpen
            ? Expanded(
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
          )
            : SizedBox.shrink(),
        ],
      ),
    );
  }
}

