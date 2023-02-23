import 'package:coocree_select_simuc/package.dart';

class SimucInclude extends StatefulWidget {
  final List<MenuItemConfig> simcons;
  final OnSelectedValues onSelected;
  const SimucInclude(
      {super.key, required this.simcons, required this.onSelected});

  @override
  State<SimucInclude> createState() => _SimucIncludeState();
}

class _SimucIncludeState extends State<SimucInclude> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SimucIncludeDrawer(
        //   simcons: widget.simcons,
        //   onSelected: (String simcon, String type) {
        //     print("SIMCON: $simcon INCLUDE: $type");
        //   },
        // ),
        // SimucIncludeDrawer(
        //     simcons: widget.simcons, onSelected: (teste, teste1) {}),
      ],
    );
  }
}
