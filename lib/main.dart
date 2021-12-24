// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:myapp/d_theme/theme_data.dart';
import 'package:myapp/screens/buttons.dart';
import 'package:myapp/screens/typography.dart';
import 'package:myapp/d_widgets/appbar.dart';
import 'package:myapp/d_widgets/d_button.dart';
import 'package:myapp/d_widgets/text_widgets.dart';

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
          title: const Text("My Style Guide"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text(
                "Typography",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white, // ! this should come from iconTheme data
              ),
              enabled: true,
              onTap: () => navigateToTypography(context),
            ),
            ListTile(
              title: const Text(
                "Buttons",
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white, // ! this should come from iconTheme data
              ),
              enabled: true,
              onTap: () => navigateToButtons(context),
            ),
          ],
        ),
      ),
    );
  }

  navigateToTypography(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DTypography()));
  }

  navigateToButtons(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const DButtons()));
  }
}
