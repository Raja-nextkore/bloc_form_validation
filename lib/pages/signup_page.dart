import 'package:bloc_form_validation/widget/custom_button.dart';
import 'package:bloc_form_validation/widget/input_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error',textAlign: TextAlign.center,style: const TextStyle(color: Colors.red),),
            const SizedBox(
              height: 15.0,
            ),
            InputField(
              labelText: 'Enter E-mail',
              controller: emailController,
              onChange: (value) {},
            ),
            const SizedBox(
              height: 15.0,
            ),
            InputField(
              labelText: 'Enter Password',
              controller: passwordController,
              onChange: (value) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            CustomButton(
              buttonLable: 'Sign In',
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
