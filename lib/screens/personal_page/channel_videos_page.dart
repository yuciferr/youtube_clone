import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

class ChannelVideosPage extends StatefulWidget {
  const ChannelVideosPage({super.key});

  @override
  State<ChannelVideosPage> createState() => _ChannelVideosPageState();
}

class _ChannelVideosPageState extends State<ChannelVideosPage> {
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

//This is the card Widget for the channel videos page.
class MyVideosCardChannel extends StatelessWidget {
  final String videoTitle;
  final String views;
  final String time;

  const MyVideosCardChannel(this.videoTitle, this.views, this.time,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.blackMain,
      elevation: 4,
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 80,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text(
                      time,
                      style: TextStyle(
                        color: MyColors.white,
                        backgroundColor: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      videoTitle,
                      style: TextStyle(
                          fontSize: 17,
                          color: MyColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      views,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
        ],
      ),
    );
  }
}
