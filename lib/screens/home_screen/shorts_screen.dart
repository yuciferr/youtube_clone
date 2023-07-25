import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';
import '../search_page/search_page.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
            icon: const ImageIcon(
              AssetImage(MyImageStrings.shortsSearch),
              size: 250.0,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(MyImageStrings.shortsCamera),
              size: 250.0,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(MyImageStrings.shortsDetail),
              size: 250.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
