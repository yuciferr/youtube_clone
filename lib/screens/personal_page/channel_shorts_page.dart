import 'package:flutter/material.dart';

class ChannelShortsPage extends StatefulWidget {
  const ChannelShortsPage({super.key});

  @override
  State<ChannelShortsPage> createState() => _ChannelShortsPageState();
}

class _ChannelShortsPageState extends State<ChannelShortsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text('Channel Shorts Page'),
      ),
    );
  }
}
