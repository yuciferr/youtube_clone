import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/constants/image_strings.dart';
import 'package:youtube_clone/constants/text_strings.dart';
import 'package:youtube_clone/screens/home_screen/subscriptions_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    color: MyColors.greyVideo,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  buildCardPagesForHome('All'),
                  buildCardPagesForHome('Mixes'),
                  buildCardPagesForHome('Music'),
                  buildCardPagesForHome('Live'),
                  buildCardPagesForHome('Game'),
                  buildCardPagesForHome('Volleyball'),
                  buildCardPagesForHome('Soccer'),
                  buildCardPagesForHome('Rp'),
                  buildCardPagesForHome('Last uploads'),
                  buildCardPagesForHome('Suggest a feedback'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Column(
                children: [
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

  Card buildCardPagesForHome(String title) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: MyColors.greyVideo,
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: TextButton(
        onPressed: () {
          // veri çekme isteği atılacak
        },
        child: Image.asset(MyImageStrings.appBarYoutubeLogo),
      ),
      title: const Text(
        'Youtube',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarConnectToDevice),
            size: 250.0,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SubscriptionsScreen(),
              ),
            );
          },
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarNotification),
            size: 250.0,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarSearch),
            size: 250.0,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            // User Profile gidecek
          },
          child: Image.asset(
            MyImageStrings.appBarUserProfileImage,
            height: 33,
            width: 33,
          ),
        ),
      ],
    );
  }
}

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
