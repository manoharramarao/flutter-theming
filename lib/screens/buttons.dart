import 'package:flutter/material.dart';
import 'package:myapp/d_widgets/d_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            DTextButton(
              onPressed: () {},
              text: "submit",
              block: false,
            ),
            DTextButton(
              onPressed: () {},
              text: "block button",
              block: true,
            ),
            DTextButton(
              onPressed: () {},
              text: "Secondary Button",
              type: "secondary",
            ),
            DTextButton(
              onPressed: () {},
              text: "Action Button",
              type: "action",
            ),
            const DTextButton(
              onPressed: null,
              text: "I am disabled",
              block: true,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("SUBMIT"),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size.fromHeight(40),
                ),
              ),
            ),
            TextButton(
              onPressed: null,
              child: const Text("SUBMIT"),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size.fromHeight(40),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                hintText: "mramarao@deloitte.com",
                labelText: "User ID",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
