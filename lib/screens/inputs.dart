import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_dropdown.dart';

class Dinputs extends StatelessWidget {
  const Dinputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(3.0),
                  ),
                ),
                hintText: "example@deloitte.com",
                labelText: "User ID",
              ),
            ),
            DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            const DDropDown(),
          ],
        ),
      ),
    );
  }
}
