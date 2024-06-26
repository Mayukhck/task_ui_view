import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui_screen/src/features/login/presentation/widgets/continue_button.dart';
import 'package:task_ui_screen/src/features/login/presentation/widgets/social_sign_in_button.dart';
import 'package:task_ui_screen/src/features/login/presentation/widgets/round_text_field.dart';


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
                        key: const ValueKey('title'),
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
                    key: const ValueKey('sub_title'),
                    'Work without limits',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  const RoundTextField(
                    key: ValueKey('email_filed'),
                    label: 'Your email address',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const RoundTextField(
                    key: ValueKey('password'),
                    label: 'Choose a password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ContinueButton(
                    key: const ValueKey('continue_button'),
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
                  SocialSignInButton(
                    key: const ValueKey('google_sign_up_button'),
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
                  SocialSignInButton(
                    key: const ValueKey('apple_sign_up_button'),
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
