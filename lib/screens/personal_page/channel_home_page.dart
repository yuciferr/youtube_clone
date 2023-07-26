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
                    postImage:
                        'https://pyxis.nymag.com/v1/imgs/96b/b93/49701e4ec64fa9663773802cc2b7b78c49-12-los-pollos-hermanos.2x.h473.w710.jpg',
                    channelImage: MyImageStrings.dummyDataChannelBedirhanImage,
                    postDescription: MyStrings.postStringsBedirhanPostTitle,
                    channelDescription:
                        MyStrings.postStringsBedirhanPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage:
                        'https://images.pond5.com/frogs-water-lily-jumping-footage-000510561_iconl.jpeg',
                    channelImage: MyImageStrings.dummyDataChannelOnurImage,
                    postDescription: MyStrings.postStringsOnurFrogPostTitle,
                    channelDescription:
                        MyStrings.postStringsOnurFrogPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage:
                        'https://i.ytimg.com/vi/enPA2i35diI/maxresdefault.jpg',
                    channelImage: MyImageStrings.dummyDataChannelYusufImage,
                    postDescription: MyStrings.postStringsYusufJobPostTitle,
                    channelDescription:
                        MyStrings.postStringsYusufJobPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage:
                        'https://emerging-europe.com/wp-content/uploads/2019/07/bigstock-krakow-poland-august-k-257572672-990x556.jpg',
                    channelImage: MyImageStrings.dummyDataChannelSerhanImage,
                    postDescription: MyStrings.postStringsSerhanDiaryPostTitle,
                    channelDescription:
                        MyStrings.postStringsSerhanDiaryPostDescription,
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
