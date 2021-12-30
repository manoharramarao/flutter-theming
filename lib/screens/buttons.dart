import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_buttons.dart';
import 'package:myapp/d_theme/d_widgets/d_icons.dart';

class DButtons extends StatelessWidget {
  const DButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        /* leading: const DIcon(
          icon: Icons.arrow_back_ios,
        ), */
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const DTextBlockButton(
              onPressed: null,
              text: "I am disabled",
            ),
            const SizedBox(height: 10),
            DTextBlockButton(
              onPressed: () {},
              text: "I am block button",
            ),
            const SizedBox(height: 10),
            DTextButton(
              onPressed: () {},
              text: "I am Button",
            ),
            DTextSecondaryButton(
              onPressed: () {},
              text: "I am Secondary button",
            ),
            DTextActionButton(
              onPressed: () {},
              text: "I am Action button",
            ),
            /* TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                ),
                hintText: "mramarao@deloitte.com",
                labelText: "User ID",
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
