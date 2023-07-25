import 'package:flutter/material.dart';

class ChannelChannelsPage extends StatelessWidget {
  const ChannelChannelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Image(image: AssetImage('assets/images/2.png')),
            SizedBox(
              height: 20,
            ),
            Text(
              'This channel does feature any other channels.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
