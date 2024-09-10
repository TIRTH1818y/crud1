import 'package:crud1/login/theme/sign%20up.dart';
import 'package:crud1/login/theme/signin.dart';
import 'package:crud1/login/theme/theme.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/custom_button.dart';
import 'custom_widgets/custom_widgets.dart';


class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return customscaffold(child: Column(

        children: [
          Flexible(
            flex: 8,
            child: Container(

              padding:EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 50,
              ) ,
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Welcome !\n ',
                        style: TextStyle(fontSize: 45, fontWeight:FontWeight.bold,color: Colors.white)),
                    TextSpan(
                        text: '\n Enter your personal details and join as ',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ]),
                ),
              ),
            ),
          ),
           Flexible(
            flex: 1,
              child:
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    const Expanded(child: welcomebutton(
                      buttonText: 'sign in',
                      ontap: signinscreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    )),
                    Expanded(child: welcomebutton(
                      buttonText: 'sign up',
                      ontap: const signupscreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,

                    )),

                  ],
                ),
              ),

          ),
        ],
      ),
    );
  }
}
