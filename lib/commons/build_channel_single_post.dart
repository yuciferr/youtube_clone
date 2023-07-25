import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

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
              TextButton(
                onPressed: () {},
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    postImage, // Resmi tamamen kaplayacak şekilde düzenledik
                  ),
                ),
              ),
              Positioned(
                bottom: 0, // Align at the bottom
                right: 0, // Align at the right
                child: Container(
                  color: MyColors.greyButton,
                  // padding: const EdgeInsets.all(
                  //     8), // Adding some padding around the text
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '10:00',
                      style: TextStyle(color: Colors.white),
                    ),
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
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        channelDescription,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 14),
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
