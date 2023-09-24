

import 'package:flutter/material.dart';

class CustomTextFelid extends StatelessWidget {
  CustomTextFelid({super.key, required this.hint, this.maxlines ,this.onSaved, this.controller});
  final String hint;
  int? maxlines;
  TextEditingController? controller;
  Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved,
      controller: controller,
      maxLines: maxlines,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
    );
  }
}