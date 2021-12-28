import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/d_theme/d_widgets/d_buttons.dart';

class DDateTimePicker extends StatefulWidget {
  const DDateTimePicker({Key? key}) : super(key: key);

  @override
  _DDateTimePickerState createState() => _DDateTimePickerState();
}

class _DDateTimePickerState extends State<DDateTimePicker> {
  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd HH:mm');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(dateFormat.format(selectedDate)),
        DTextBlockButton(
          text: "Choose New Date",
          onPressed: () async {
            final selectedDate = await _selectDateTime(context);
            if (selectedDate == null) return;
            /* final selectedTime = await _selectTime(context);
            if (selectedTime == null) return;
            print(selectedTime); */
            setState(() {
              this.selectedDate = DateTime(
                  selectedDate.year, selectedDate.month, selectedDate.day);
            });
          },
        ),
      ],
    );
  }

  /* Future<TimeOfDay?> _selectTime(BuildContext context) {
    final now = DateTime.now();

    return showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
    );
  } */

  Future<DateTime?> _selectDateTime(BuildContext context) => showDatePicker(
        context: context,
        initialDate: DateTime.now().add(const Duration(seconds: 1)),
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
}
