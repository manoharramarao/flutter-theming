import 'package:flutter/material.dart';
import 'package:myapp/d_theme/d_widgets/d_colors.dart';

class DTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const DTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(0, 0)),
        fixedSize: MaterialStateProperty.all(
          const Size.fromHeight(50.0),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}

class DTextBlockButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const DTextBlockButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text.toUpperCase()),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size.fromHeight(60),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}

class DTextSecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const DTextSecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(0, 0)),
          fixedSize: MaterialStateProperty.all(
            const Size.fromHeight(30.0),
          ),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 12.0),
          ),
        ));
  }
}

class DTextActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const DTextActionButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(DColors.primaryColor),
          minimumSize: MaterialStateProperty.all(const Size(0, 0)),
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 15.0),
          ),
        ));
  }
}
