import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/d_theme/d_widgets/d_buttons.dart';
import 'package:myapp/d_theme/d_widgets/d_text_field.dart';

class DDateTimePicker extends StatefulWidget {
  const DDateTimePicker({Key? key}) : super(key: key);

  @override
  _DDateTimePickerState createState() => _DDateTimePickerState();
}

class _DDateTimePickerState extends State<DDateTimePicker> {
  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('MMM dd, yyyy');
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DTextField(
          controller: _controller,
          hintText: "Feb 2, 2022",
          labelText: "Select Date",
          validator: (value) {},
          suffixIcon: IconButton(
            icon: const Icon(Icons.date_range),
            onPressed: () async {
              final selectedDate = await _selectDateTime(context);
              if (selectedDate == null) return;
              setState(() {
                this.selectedDate = DateTime(
                    selectedDate.year, selectedDate.month, selectedDate.day);
                _controller.value = TextEditingValue(
                  text: dateFormat.format(selectedDate),
                );
              });
            },
          ),
          onTap: () async {
            final selectedDate = await _selectDateTime(context);
            if (selectedDate == null) return;
            setState(() {
              this.selectedDate = DateTime(
                  selectedDate.year, selectedDate.month, selectedDate.day);
              _controller.value = TextEditingValue(
                text: dateFormat.format(selectedDate),
              );
            });
          },
        ),
      ],
    );
  }

  Future<DateTime?> _selectDateTime(BuildContext context) => showDatePicker(
        context: context,
        initialDate: DateTime.now().add(const Duration(seconds: 1)),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
}
