import 'package:flutter/material.dart';
import '../login/login_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(
                  "Full Name",
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "Your Full Name",
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(
                  "E-mail",
                  style: TextStyle(color: Colors.white),
                ),
                hintText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Phone no"),
                hintText: "Phone no",
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text("Password"),
                hintText: "Password",
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreenOfYoutube()));
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
