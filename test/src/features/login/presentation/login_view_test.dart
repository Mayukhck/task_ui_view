import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_ui_screen/src/features/login/presentation/login_view.dart';

void main() {
  group('Checking widget found or not', () {
    testWidgets('Finding title present in screen or not', (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder title = find.byKey(const ValueKey('title'));

      expect(title, findsOneWidget);
    });
    testWidgets('Finding sub_title present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder title = find.byKey(const ValueKey('sub_title'));

      expect(title, findsOneWidget);
    });
    testWidgets('Finding email filed present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder emailFiled = find.byKey(const ValueKey('email_filed'));

      expect(emailFiled, findsOneWidget);
    });

    testWidgets('Finding password filed present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder passwordFiled = find.byKey(const ValueKey('password'));

      expect(passwordFiled, findsOneWidget);
    });
        testWidgets('Finding continue button present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder continueButton = find.byKey(const ValueKey('continue_button'));

      expect(continueButton, findsOneWidget);
    });
            testWidgets('Finding google sign up button present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder googleSignUpButton = find.byKey(const ValueKey('google_sign_up_button'));

      expect(googleSignUpButton, findsOneWidget);
    });
                testWidgets('Finding apple sign up button present in screen or not',
        (widgetTester) async {
      await widgetTester.pumpWidget(
        const MaterialApp(
          home: LoginView(),
        ),
      );

      Finder appleSignUpButton = find.byKey(const ValueKey('apple_sign_up_button'));

      expect(appleSignUpButton, findsOneWidget);
    });
  });
}
