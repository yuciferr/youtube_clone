import 'package:flutter/material.dart';

class CVP extends StatefulWidget {
  const CVP({super.key});

  @override
  State<CVP> createState() => _CVPState();
}

class _CVPState extends State<CVP> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Channel Videos Page'),
      ),
    );
  }
}
