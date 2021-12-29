import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DTextDropdown extends StatefulWidget {
  final List<String> items;
  final bool showSearchBox;
  final String labelText;
  final ValueChanged<String?>? onChanged;

  const DTextDropdown({
    Key? key,
    this.labelText = "",
    required this.items,
    this.showSearchBox = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  _DTextDropdownState createState() => _DTextDropdownState();
}

class _DTextDropdownState extends State<DTextDropdown> {
  List<String> get items => widget.items;
  bool get showSearchBox => widget.showSearchBox;
  ValueChanged<String?>? get onChanged => widget.onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      mode: Mode.BOTTOM_SHEET,
      showSelectedItems: true,
      items: items,
      onChanged: onChanged,
      showSearchBox: showSearchBox,
      dropdownSearchDecoration: const InputDecoration(
        isDense: false,
        labelText: "Select a country",
        contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
        border: OutlineInputBorder(),
      ),
    );
  }
}
