import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_ui_screen/src/features/login/presentation/login_view.dart';

void main(){
group('Checking widget found or not', () { 
    testWidgets('Finding title present in screen or not', (widgetTester)  async{
      await widgetTester.pumpWidget(const MaterialApp(home: LoginView(),),);

      Finder title = find.byKey(const ValueKey('title'));

      expect(title, findsOneWidget);
  });
      testWidgets('Finding sub_title present in screen or not', (widgetTester)  async{
      await widgetTester.pumpWidget(const MaterialApp(home: LoginView(),),);

      Finder title = find.byKey(const ValueKey('sub_title'));

      expect(title, findsOneWidget);
  });
});
}