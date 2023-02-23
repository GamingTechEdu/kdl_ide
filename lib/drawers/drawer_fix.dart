import 'package:coocree_select_simuc/package.dart';

class DrawerFix extends StatelessWidget {
  const DrawerFix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: SimucIncludeDrawer(),
    );
  }
}
