import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_icons.dart';
import 'package:myapp/d_theme/d_widgets/text_widgets.dart';

class DTypography extends StatelessWidget {
  const DTypography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typography"),
        leading: const DBackButton(),
      ),
      body: const TextWidgets(),
    );
  }
}
