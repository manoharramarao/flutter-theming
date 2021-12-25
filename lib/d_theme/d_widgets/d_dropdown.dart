import 'package:flutter/material.dart';

class DDropDown extends StatefulWidget {
  const DDropDown({Key? key}) : super(key: key);

  @override
  _DDropDownState createState() => _DDropDownState();
}

class _DDropDownState extends State<DDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<dynamic>(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
        ),
      ),
      items: <String>[
        'item 1',
        'item 2',
        'item 3',
        'item 4',
        'item 5',
        'item 6',
        'item 7',
        'item 8',
        'item 9',
        'item 10'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}
