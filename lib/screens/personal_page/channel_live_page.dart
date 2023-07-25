import 'package:flutter/material.dart';

import 'channel_videos_page.dart';

class ChannelLivePage extends StatefulWidget {
  const ChannelLivePage({super.key});

  @override
  State<ChannelLivePage> createState() => _ChannelLivePageState();
}

class _ChannelLivePageState extends State<ChannelLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView(
          children: const [
            MyVideosCardChannel(
              'Video Title 1',
              '1.2M views',
              '12:42',
            ),
            MyVideosCardChannel(
              'Video Title 2',
              '1.4M views',
              '34:18',
            ),
            MyVideosCardChannel(
              'Video Title 3',
              '1.1M views',
              '12:42',
            ),
            MyVideosCardChannel(
              'Video Title 4',
              '3.4M views',
              '22:12',
            ),
            MyVideosCardChannel(
              'Video Title 5',
              '1.8M views',
              '46:36',
            ),
            MyVideosCardChannel(
              'Video Title 6',
              '6.6M views',
              '42:33',
            ),
            MyVideosCardChannel(
              'Video Title 7',
              '1.2M views',
              '12:42',
            ),
            MyVideosCardChannel(
              'Video Title 8',
              '1.4M views',
              '34:18',
            ),
            MyVideosCardChannel(
              'Video Title 9',
              '1.1M views',
              '12:42',
            ),
          ],
        ),
      ),
    );
  }
}
