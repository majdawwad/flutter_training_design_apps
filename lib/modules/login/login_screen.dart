import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:simple_designs/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 20.0,
                    top: 10.0,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: defaultTextFormField(
                    controller: emailcontroller,
                    type: TextInputType.emailAddress,
                    functionValidation: (value) {
                      if (value!.isEmpty) {
                        return "email must not be is empty";
                      }
                      return null;
                    },
                    labelText: 'Email',
                    prifixIcon: Icons.email_outlined,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: defaultTextFormField(
                    controller: passwordcontroller,
                    type: TextInputType.visiblePassword,
                    functionValidation: (value) {
                      if (value!.isEmpty) {
                        return "password must not be empty";
                      }
                      return null;
                    },
                    labelText: 'Password',
                    prifixIcon: Icons.lock,
                    isPassword: isPassword,
                    suffix:
                        isPassword ? Icons.visibility_off : Icons.visibility,
                    suffixFunction: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                  isUpperCase: true,
                  function: () {
                    if (formkey.currentState!.validate()) {
                      log(emailcontroller.text);
                      log(passwordcontroller.text);
                    }
                  },
                  text: 'login',
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have account?'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Rigester Now',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
