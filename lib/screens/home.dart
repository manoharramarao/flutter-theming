import 'package:flutter/material.dart';
import 'package:myapp/screens/buttons.dart';
import 'package:myapp/screens/inputs.dart';
import 'package:myapp/screens/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ListTile(
            title: const Text(
              "Inputs",
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white, // ! this should come from iconTheme data
            ),
            enabled: true,
            onTap: () => navigateToInputs(context),
          ),
        ],
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

  navigateToInputs(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Dinputs()));
  }
}
