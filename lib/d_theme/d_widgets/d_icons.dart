import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_colors.dart';

class DIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const DIcon({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: DColors.primaryColor,
      disabledColor: DColors.disabledCheckboxColor,
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 30.0, // TODO move it to constants
      ),
    );
  }
}
