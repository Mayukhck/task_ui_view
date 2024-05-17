import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui_screen/src/features/uiscreen/widgets/custom_button.dart';
import 'package:task_ui_screen/src/features/uiscreen/widgets/custom_button_link.dart';
import 'package:task_ui_screen/src/features/uiscreen/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Form(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/leaf_logo.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Leafboard',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Work without limits',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  const CustomTextField(
                    label: 'Your email address',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomTextField(
                    label: 'Choose a password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    text: 'Continue',
                    backgroundColor: HexColor('#a8fe86'),
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: const Color(0x00000000).withOpacity(0.2),
                        ),
                      ),
                      Text("or", style: GoogleFonts.poppins()),
                      Expanded(
                        child: Divider(
                          color: const Color(0x00000000).withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButtonLink(
                    text: 'Sign up with Google',
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/google_logo.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButtonLink(
                    text: 'Sign up with Apple',
                    backgroundColor: Colors.white,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/apple_logo.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
