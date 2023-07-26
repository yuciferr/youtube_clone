import 'package:flutter/material.dart';
import '../login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:youtube_clone/auth.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  bool _isAccountCreated = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);

    } on FirebaseAuthException catch (e) {
      // if (e.code == 'weak-password') {
      //   print('The password provided is too weak.');
      // } else if (e.code == 'email-already-in-use') {
      //   print('The account already exists for that email.');
      // }
      print(e);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                label: Text(
                  "Full Name",
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "Your Full Name",
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                label: Text(
                  "E-mail",
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "E-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                label: Text("Phone no"),
                hintText: "Phone no",
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                label: Text("Password"),
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  createUserWithEmailAndPassword();
                  setState(() {
                    _isAccountCreated = true;
                  });
                  if(_isAccountCreated){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreenOfYoutube()));
                  }
                },
                child: Text(
                  "Signup".toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
