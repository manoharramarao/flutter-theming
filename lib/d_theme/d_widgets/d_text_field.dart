import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DTextField extends StatefulWidget {
  @override
  // ignore: override_on_non_overriding_member
  FormFieldValidator<String>? validator;
  final String hintText;
  final String labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

  DTextField({
    Key? key,
    required this.validator,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.controller,
  }) : super(
          key: key,
        );

  @override
  _DTextFieldState createState() => _DTextFieldState();
}

class _DTextFieldState extends State<DTextField> {
  FormFieldValidator<String>? get validator => widget.validator;
  String get hintText => widget.hintText;
  String get labelText => widget.labelText;
  Widget? get suffixIcon => widget.suffixIcon;
  Widget? get prefixIcon => widget.prefixIcon;
  GestureTapCallback? get onTap => widget.onTap;
  TextEditingController? get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle(
        height: 1.55, // TODO - get this from constants
      ),
      decoration: InputDecoration(
        isDense: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3.0), // TODO - get this from constants
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
    );
  }
}
