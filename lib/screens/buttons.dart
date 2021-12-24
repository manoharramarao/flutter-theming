import 'package:flutter/material.dart';
import 'package:myapp/d_widgets/leading_icon.dart';

class DButtons extends StatelessWidget {
  const DButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        leading: const DBackButton(),
      ),
    );
  }
}
