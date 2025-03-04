import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsica/core/constants.dart';

class IdField extends StatelessWidget {
  final VoidCallback onSelectImage;
  final String label;

  const IdField({
    super.key,
    required this.onSelectImage,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.comfortaa(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: kInputWordColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: kStorkTextFieldColor),
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
        suffixIcon: IconButton(
          icon: const Icon(Icons.camera_alt, color: kIconsColor),
          onPressed: onSelectImage, // يتم استدعاء الدالة مباشرة بدون تكرار
        ),
      ),
    );
  }
}
