import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_colors.dart';

class DCheckbox extends StatefulWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;

  const DCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DCheckboxState createState() => _DCheckboxState();
}

class _DCheckboxState extends State<DCheckbox> {
  ValueChanged<bool?>? get onChanged => widget.onChanged;
  bool? get value => widget.value;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      // checkColor: Colors.black,
      // activeColor: Colors.black,
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return DColors.disabledCheckboxColor;
        }
        return DColors.primaryColor;
      }),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
      // side: MaterialStateBorderSide.resolveWith((states) {
      //   if (states.contains()) {

      //   }
      // }),
    );
  }
}
