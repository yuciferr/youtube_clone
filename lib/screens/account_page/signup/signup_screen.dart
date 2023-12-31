import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/screens/account_page/signup/signup_form_widget.dart';

import '../login/login_screen.dart';
import 'form_header_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:youtube_clone/auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.blackMain,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const FormHeaderWidget(
                  image: 'https://img.icons8.com/?size=512&id=19318&format=png',
                  subtitle: 'Enter your information',
                  imageHeight: 0.3,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const SignUpFormWidget(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginScreenOfYoutube()));
                        },
                        child: Text.rich(
                          TextSpan(
                            text: 'Already have an Account?',
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: const [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
