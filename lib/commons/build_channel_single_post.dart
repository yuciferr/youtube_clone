import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

import '../screens/video_list_page/video_list_page.dart';

class BuildChannelSinglePost extends StatelessWidget {
  const BuildChannelSinglePost(
      {super.key,
      required this.postImage,
      required this.channelImage,
      required this.postDescription,
      required this.channelDescription});

  final String postImage;
  final String channelImage;
  final String postDescription;
  final String channelDescription;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Expanded(
                  child: TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoPlayerPage()));},child: Image.network(postImage),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  '20:43',
                  style: TextStyle(
                    color: MyColors.white,
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  // User Profile gidecek
                },
                child: CircleAvatar(
                    backgroundImage: AssetImage(channelImage), radius: 26),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postDescription,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        channelDescription,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_sharp,
                ),
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}