import 'package:flutter/material.dart';

class CHP extends StatefulWidget {
  const CHP({super.key});

  @override
  State<CHP> createState() => _CHPState();
}

class _CHPState extends State<CHP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Channel Home Page'),
      ),
    );
  }
}
