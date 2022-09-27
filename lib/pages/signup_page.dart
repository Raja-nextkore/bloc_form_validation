import 'dart:html';

import 'package:bloc_form_validation/bloc/validation_bloc/validation_bloc.dart';
import 'package:bloc_form_validation/bloc/validation_bloc/validation_event.dart';
import 'package:bloc_form_validation/bloc/validation_bloc/validation_state.dart';
import 'package:bloc_form_validation/widget/custom_button.dart';
import 'package:bloc_form_validation/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<ValidationBloc, ValidationState>(
                builder: (context, state) {
              if (state is SignInErrorValidationState) {
                return Text(
                  state.errormsg,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                );
              } else {
                return Container();
              }
            }),
            const SizedBox(
              height: 15.0,
            ),
            InputField(
              labelText: 'Enter E-mail',
              controller: emailController,
              onChange: (value) {
                BlocProvider.of<ValidationBloc>(context).add(
                  EmailPasswordChangeEvent(
                      emailController.text, passwordController.text),
                );
              },
            ),
            const SizedBox(
              height: 15.0,
            ),
            InputField(
              labelText: 'Enter Password',
              controller: passwordController,
              isPasswordField: true,
              onChange: (value) {
                BlocProvider.of<ValidationBloc>(context).add(
                  EmailPasswordChangeEvent(
                      emailController.text, passwordController.text),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            BlocBuilder<ValidationBloc, ValidationState>(
                builder: (context, state) {
              return CustomButton(
                clr: (state is SignInVailedValidationState)
                    ? Colors.blue
                    : Colors.grey,
                child: (state is SignInLoadingValidationState)
                    ? const CircularProgressIndicator(color: Colors.white,)
                    : const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                onpressed: () {
                  if (state is SignInVailedValidationState) {
                    BlocProvider.of<ValidationBloc>(context).add(
                        SignInSubmitedEvent(
                            emailController.text, passwordController.text));
                  } else {}
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
