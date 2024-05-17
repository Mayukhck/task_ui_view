import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final bool obscureText;
  final Widget? suffixIcon;

  const RoundTextField({
    super.key,
    required this.label,
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.lato(fontSize: 15),
        ),
        const SizedBox(height: 5),
        SizedBox(
          width: 500.0,
          height: 50.0,
          child: TextField(
            keyboardType: inputType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.1),
                  width: 1.0,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              labelText: '',
              suffixIcon: suffixIcon,
            ),
          ),
        )
      ],
    );
  }
}
