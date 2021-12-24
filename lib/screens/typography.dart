import 'package:flutter/material.dart';
import 'package:myapp/text_widgets/text_widgets.dart';

class DTypography extends StatelessWidget {
  const DTypography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typography"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const TextWidgets(),
    );
  }
}
