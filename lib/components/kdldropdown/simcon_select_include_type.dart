import 'package:flutter/material.dart';
import 'package:coocree_select_simuc/components/kdldropdown/menu_item_config.dart';

typedef OnSelectedValues = void Function(String simcon, String type);

class SimconSelectIncludeType extends StatefulWidget {
  final List<MenuItemConfig> simcons;
  final OnSelectedValues onSelected;
  final EdgeInsetsGeometry padding;
  final String label;

  const SimconSelectIncludeType(
      {super.key,
        this.padding = const EdgeInsets.only(bottom: 20),
      required this.simcons,
      required this.onSelected,
      required this.label});

  @override
  State<SimconSelectIncludeType> createState() =>
      _SimconSelectIncludeTypeState();
}

class _SimconSelectIncludeTypeState extends State<SimconSelectIncludeType> {
  String simcon = "";
  Widget _buildSelectSimcon() {
    List<DropdownMenuItem<dynamic>>? listMenuItem = [];

    for (var MenuItemConfig in widget.simcons) {
      listMenuItem.add(
        DropdownMenuItem(
            child: Text(MenuItemConfig.label), value: MenuItemConfig.value),
      );
    }

    return Container(
      height: 67,
      child: Padding(
        padding: widget.padding,
        child: DropdownButtonFormField(
          style: TextStyle(fontSize: 15),
          elevation: 0,
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          focusColor: Colors.transparent,
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.black, fontSize: 25),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 3, color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10)),
              labelText: widget.label,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1.5, color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(10)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
          isExpanded: true,
          items: listMenuItem,
          value: null,
          onChanged: (v) {
            simcon = v;
            setState(() {
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildSelectSimcon(),
    ]);
  }
}
