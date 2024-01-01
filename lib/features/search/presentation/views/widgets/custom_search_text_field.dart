import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.onPressed,
    this.onChanged,
  });

  final void Function()? onPressed;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: buildOutlinedBorder(Colors.white),
          focusedBorder: buildOutlinedBorder(Colors.grey),
          suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }

  OutlineInputBorder buildOutlinedBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
