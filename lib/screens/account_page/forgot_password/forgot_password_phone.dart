import 'package:flutter/material.dart';

import '../signup/form_header_widget.dart';
import 'otp_screen.dart';

class ForgotPasswordPhoneScreen extends StatelessWidget {
  const ForgotPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const FormHeaderWidget(
                  image: 'https://storyset.com/illustration/fingerprint/bro',
                  subtitle: "Enter your registered Phone to receive OTP",
                  imageHeight: 0.5,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text("Phone"),
                          hintText: 'Phone',
                          prefixIcon: Icon(Icons.phone_iphone_outlined),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.pop(context);
                            // Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OTPScreen()));
                          },
                          child: const Text('Next'),
                        ),
                      ),
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
