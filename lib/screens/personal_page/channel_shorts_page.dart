import 'package:flutter/material.dart';

import '../../constants/colors.dart';

// Sample data representing the Shorts videos
List<Map<String, dynamic>> shortsVideos = [
  {
    'title': 'Shorts Video 1',
    'thumbnail': 'https://example.com/thumbnail1.jpg',
  },
  {
    'title': 'Shorts Video 2',
    'thumbnail': 'https://example.com/thumbnail2.jpg',
  },
  {
    'title': 'Shorts Video 3',
    'thumbnail': 'https://example.com/thumbnail3.jpg',
  },
  {
    'title': 'Shorts Video 4',
    'thumbnail': 'https://example.com/thumbnail4.jpg',
  },
  {
    'title': 'Shorts Video 5',
    'thumbnail': 'https://example.com/thumbnail5.jpg',
  },
  {
    'title': 'Shorts Video 6',
    'thumbnail': 'https://example.com/thumbnail1.jpg',
  },
  {
    'title': 'Shorts Video 7',
    'thumbnail': 'https://example.com/thumbnail2.jpg',
  },
  {
    'title': 'Shorts Video 8',
    'thumbnail': 'https://example.com/thumbnail3.jpg',
  },
  {
    'title': 'Shorts Video 9',
    'thumbnail': 'https://example.com/thumbnail4.jpg',
  },
  {
    'title': 'Shorts Video 10',
    'thumbnail': 'https://example.com/thumbnail5.jpg',
  },

  // Add more video data as needed
];

class ChannelShortsPage extends StatefulWidget {
  const ChannelShortsPage({super.key});

  @override
  State<ChannelShortsPage> createState() => _ChannelShortsPageState();
}

class _ChannelShortsPageState extends State<ChannelShortsPage> {
  @override
  Widget build(BuildContext context) {
    // Calculate the number of columns based on the screen width
    final screenWidth = MediaQuery.of(context).size.width;
    const numColumns = 3;

    return GridView.builder(
      itemCount: shortsVideos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: numColumns,
        childAspectRatio: screenWidth / (screenWidth * 1.4),
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.grey[900],
          margin: const EdgeInsets.all(2),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  //height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.more_vert,
                        color: MyColors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text("5.9k views"),
                ],
              )),
            ],
          ),
        );
      },
    );
  }
}
