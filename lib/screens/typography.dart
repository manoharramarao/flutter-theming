import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_icons.dart';

class DTypography extends StatelessWidget {
  const DTypography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Typography"),
        leading: const DBackButton(),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Heading 2',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is heading 3",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is heading 4",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is heading 5",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is heading 6",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is Subtitle 1",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is Subtitle 2",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is Overline",
                style: Theme.of(context).textTheme.overline,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is caption",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "This is button text",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'This is body text 1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Text(
              'This is body text 2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
