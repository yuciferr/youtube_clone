import 'package:flutter/material.dart';

class ChannelAboutPage extends StatelessWidget {
  const ChannelAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Akdeniz BT is a YouTube channel that is dedicated to the world of technology. You can find videos about computer hardware, software, mobile phones, and more. There are reviews, tutorials, and more. Check out the website at https://akdenizbt.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Links',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'https://akdenizbt.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
