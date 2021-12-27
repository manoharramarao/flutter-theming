import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_dropdown.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dio/dio.dart';

/* class Dinputs extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  
  Dinputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
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
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
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
              const DDropdown(),
            ],
          ),
        ),
      ),
    );
  }
} */

class DInputs extends StatefulWidget {
  const DInputs({Key? key}) : super(key: key);

  @override
  _DInputsState createState() => _DInputsState();
}

class _DInputsState extends State<DInputs> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs"),
      ),
      body: Form(
        key: _formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(3.0),
                    ),
                  ),
                  hintText: "example@deloitte.com",
                  labelText: "User ID",
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
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
              const DDropdown(),
            ],
          ),
        ),
      ),
    );
  }
}
