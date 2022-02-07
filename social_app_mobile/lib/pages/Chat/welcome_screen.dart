import 'package:Social/pages/Chat/ChatConstant.dart';
import 'package:Social/pages/SignInOrSignUo/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children2 = [
      Spacer(flex: 2),
      Image.asset('assets/images/welcome_image.png'),
      Spacer(flex: 3),
      Text("Welcome to our Social Messaging App",
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold)),
      Spacer(),
      Text("let's connect with anyone from erverwhere",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .color
                  .withOpacity(0.64))),
      Spacer(flex: 3),
      FittedBox(
        child: TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInorSignUp())),
            child: Row(children: <Widget>[
              Text("Skip",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.8))),
              SizedBox(width: kDefaultPadding / 4),
              Icon(Icons.arrow_forward_ios,
                  size: 16,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .color
                      .withOpacity(0.8))
            ])),
      )
    ];
    return Scaffold(body: SafeArea(child: Column(children: children2)));
  }
}
