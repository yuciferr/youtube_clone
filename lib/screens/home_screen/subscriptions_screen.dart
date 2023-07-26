import 'package:flutter/material.dart';
import 'package:youtube_clone/commons/base_app_bar.dart';
import 'package:youtube_clone/screens/all_subscriptions_page/all_subscriptions_page.dart';

import '../../commons/build_card_pages_scrollable_channels.dart';
import '../../commons/build_channel_single_post.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';
import '../personal_page/personal_page_home.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage,
                      'bedirhantng'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelYusufImage, 'yuciffer'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelSerhanImage, 'serhanbymz'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBtAkdenizImage,
                      'btkakdeniz'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelYusufImage, 'yuciffer'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage,
                      'bedirhantng'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelOnurImage, '10urcetin'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelSerhanImage, 'serhanbymz'),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage,
                      'bedirhantng'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AllSubscriptionsPage()));
                    },
                    child: const Text('All'),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  BuildCardPagesScrollableChannels(title: 'All'),
                  BuildCardPagesScrollableChannels(title: 'Mixes'),
                  BuildCardPagesScrollableChannels(title: 'Music'),
                  BuildCardPagesScrollableChannels(title: 'Live'),
                  BuildCardPagesScrollableChannels(title: 'Game'),
                  BuildCardPagesScrollableChannels(title: 'Volleyball'),
                  BuildCardPagesScrollableChannels(title: 'Soccer'),
                  BuildCardPagesScrollableChannels(title: 'Rp'),
                  BuildCardPagesScrollableChannels(title: 'Last uploads'),
                  BuildCardPagesScrollableChannels(title: 'Suggest a feedback'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
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
                        'https://pyxis.nymag.com/v1/imgs/96b/b93/49701e4ec64fa9663773802cc2b7b78c49-12-los-pollos-hermanos.2x.h473.w710.jpg',
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

  Padding buildChannelsSubscribed(String channelName, String channel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          setState(
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalPageHome(),
                ),
              );
            },
          );
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(channelName),
            ),
            Text(
              channel,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
