import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_text_field.dart';

class DSearchBox extends StatefulWidget {
  final String hintText;
  final String labelText;

  const DSearchBox({
    Key? key,
    this.hintText = "Search",
    this.labelText = "Search",
  }) : super(
          key: key,
        );

  @override
  _DSearchBoxState createState() => _DSearchBoxState();
}

class _DSearchBoxState extends State<DSearchBox> {
  String get hintText => widget.hintText;
  String get labelText => widget.labelText;
  @override
  Widget build(BuildContext context) {
    return DTextField(
      validator: null,
      hintText: hintText,
      labelText: labelText,
      prefixIcon: const Icon(
        Icons.search_rounded,
        size: 30.0, // TODO move it to constants
      ),
    );
  }
}
