import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_icons.dart';

class DIconsScreen extends StatelessWidget {
  const DIconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Icons"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const <Widget>[
                DIcon(icon: Icons.add),
                DIcon(icon: Icons.search_rounded),
                DIcon(icon: Icons.arrow_back_ios),
                DIcon(icon: Icons.arrow_forward_ios),
                DIcon(icon: Icons.menu),
                DIcon(icon: Icons.date_range),
                DIcon(icon: Icons.edit),
                DIcon(icon: Icons.undo),
                DIcon(icon: Icons.edit_outlined),
                DIcon(icon: Icons.refresh_outlined)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: <Widget>[
                DIcon(icon: Icons.add, onPressed: () {}),
                DIcon(icon: Icons.search_rounded, onPressed: () {}),
                DIcon(icon: Icons.arrow_back_ios, onPressed: () {}),
                DIcon(icon: Icons.arrow_forward_ios, onPressed: () {}),
                DIcon(icon: Icons.menu, onPressed: () {}),
                DIcon(icon: Icons.date_range, onPressed: () {}),
                DIcon(icon: Icons.edit, onPressed: () {}),
                DIcon(icon: Icons.undo, onPressed: () {}),
                DIcon(icon: Icons.edit_outlined, onPressed: () {}),
                DIcon(icon: Icons.refresh_outlined, onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
