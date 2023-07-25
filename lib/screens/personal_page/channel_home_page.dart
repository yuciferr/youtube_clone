import 'package:flutter/material.dart';

import '../../commons/build_channel_single_post.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class ChannelHomePage extends StatefulWidget {
  const ChannelHomePage({super.key});

  @override
  State<ChannelHomePage> createState() => _ChannelHomePageState();
}

class _ChannelHomePageState extends State<ChannelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: ListView(
                children: const [
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelYusufImage,
                    channelImage: MyImageStrings.dummyDataChannelYusufImage,
                    postDescription: MyStrings.postStringsYusufJobPostTitle,
                    channelDescription:
                        MyStrings.postStringsYusufJobPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelSerhanImage,
                    channelImage: MyImageStrings.dummyDataChannelSerhanImage,
                    postDescription: MyStrings.postStringsSerhanDiaryPostTitle,
                    channelDescription:
                        MyStrings.postStringsSerhanDiaryPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelOnurImage,
                    channelImage: MyImageStrings.dummyDataChannelOnurImage,
                    postDescription: MyStrings.postStringsOnurFrogPostTitle,
                    channelDescription:
                        MyStrings.postStringsOnurFrogPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelBedirhanImage,
                    channelImage: MyImageStrings.dummyDataChannelBedirhanImage,
                    postDescription: MyStrings.postStringsBedirhanPostTitle,
                    channelDescription:
                        MyStrings.postStringsBedirhanPostDescription,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
