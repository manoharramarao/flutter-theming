import 'package:flutter/material.dart';
import 'package:myapp/d_widgets/d_colors.dart';

class DTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool block;
  final String type;

  const DTextButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.type = "",
      this.block = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(_buttonText),
      // style: flatButtonStyle,
      style: ButtonStyle(
        // splashFactory: NoSplash.splashFactory,
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => _getBackgroundColor(states)),
        foregroundColor: MaterialStateProperty.resolveWith(
            (states) => _getForegroundColor(states)),
        textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: _textFontSize),
        ),
        // maximumSize: _getSize(),
        minimumSize: MaterialStateProperty.all(const Size(0, 0)),
        fixedSize: _getSize(context),
        // fixedSize: MaterialStateProperty.all(
        //   const Size.fromHeight(40),
        // ),
      ),
    );
  }

  MaterialStateProperty<Size> _getSize(BuildContext context) {
    if (block) {
      // * secondary button can't have full width
      return MaterialStateProperty.all(
        Size(MediaQuery.of(context).size.width, _buttonHeight),
      );
    } else {
      return MaterialStateProperty.all(
        Size.fromHeight(_buttonHeight),
      );
    }
  }

  Color _getForegroundColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.black;
    }
    if (states.contains(MaterialState.pressed)) {
      return "action" == type ? DColors.primaryColor : Colors.white;
    }
    return type == "action" ? DColors.primaryColor : Colors.white;
  }

  Color _getBackgroundColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return Colors.transparent;
    } else if (states.contains(MaterialState.disabled)) {
      return DColors.disabledButtonColor;
    }
    return type == "action" ? Colors.transparent : DColors.primaryColor;
  }

  double get _textFontSize {
    if ("secondary" == type) {
      return 13.0;
    }
    return 15.0;
  }

  String get _buttonText {
    if ("secondary" == type || "action" == type) {
      return text;
    }
    return text.toUpperCase();
  }

  double get _buttonHeight {
    if ("secondary" == type) {
      return 30.0;
    }
    return 40.0;
  }
}
