import 'package:Social/components/primary_button.dart';
import 'package:Social/pages/Chat/ChatConstant.dart';
import 'package:Social/pages/Chat/chat.dart';
import 'package:flutter/material.dart';

class SignInorSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/images/Logo_light.png'
                  : 'assets/images/Logo_dark.png',
              height: 146),
          Spacer(),
          PrimaryButton(
            text: 'Sign In',
            press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatApp())),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          PrimaryButton(
              text: 'Sign Up',
              color: Theme.of(context).colorScheme.secondary,
              press: () {}),
          Spacer(flex: 2),
        ],
      )),
    );
  }
}
