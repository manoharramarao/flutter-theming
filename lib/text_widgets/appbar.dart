import 'package:flutter/material.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const DAppBar({
    Key? key,
    this.backgroundColor = Colors.black,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: appBarTitle(title: title),
    );
  }

  Widget appBarTitle({required String title}) {
    return Text(
      title,
    );
  }
}
