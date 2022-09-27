import 'package:bloc_form_validation/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: FlutterLogo(
                size: 200.0,
                style: FlutterLogoStyle.markOnly,
              ),
            ),
            CustomButton(
              buttonLable: 'Sign with E-mail',
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  SignUpPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomButton(
              buttonLable: 'Sign with Google',
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
