import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants.dart';

class InputField extends StatelessWidget {
  final String label;
  final Widget? icon; // 🆕 جعل الأيقونة اختيارية

  const InputField({
    super.key,
    required this.label,
    this.icon, // 🆕 إضافة معامل اختياري للأيقونة
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.comfortaa(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: kInputWordColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kBurgColor,
            width: 1,
          ),
        ),
        floatingLabelStyle: const TextStyle(
          color: kBurgColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kStorkTextFieldColor,
            width: 1,
          ),
        ),
        suffixIcon: icon, 
      ),
    );
  }
}
