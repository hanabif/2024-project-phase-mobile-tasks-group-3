// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const CustomFormField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 8),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: Color(0xFF858585),
              fontSize: 18,
            ),
            filled: true,
            fillColor: Color(0xFFF2F2F2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2),

            ),
            suffixIcon: isPassword? Icon(Icons.visibility_off, color: Colors.blue,) : null,
          ),
        )
      ],
    );
  }
}