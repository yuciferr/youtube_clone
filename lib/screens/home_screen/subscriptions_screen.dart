import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelBedirhanImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelYusufImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelSerhanImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelBtAkdenizImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelYusufImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelBedirhanImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelOnurImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelSerhanImage),
                buildChannelsSubscribed(
                    MyImageStrings.dummyDataChannelBedirhanImage),
              ],
            ),
          ),
          // aboneliklerin paylaştıkları gönderiler gelecek
        ],
      ),
    );
  }

  Padding buildChannelsSubscribed(String channelName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(channelName),
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
