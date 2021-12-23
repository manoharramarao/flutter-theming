// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:myapp/d_theme/theme_data.dart';
import 'package:myapp/text_widgets/appbar.dart';
import 'package:myapp/text_widgets/d_button.dart';
import 'package:myapp/text_widgets/text_widgets.dart';

void main() {
  runApp(MaterialApp(home: const HomePage(), theme: DTheme.darkTheme));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Style Guide"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Typography"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              enabled: true,
            ),
            DButton(
              onPressed: () {},
              text: "SUBMIT",
            )
          ],
        ),
      ),
    );
  }
}
