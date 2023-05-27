import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final String label;
  final bool obscureText;
  final IconData? prefixIcon;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.label,
    required this.obscureText,
    this.prefixIcon,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          // enabledBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.white),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.grey.shade400),
          // ),
          // fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(),
          // filled: true,
          hintText: widget.hintText,
          labelText: widget.label,
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          // hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
