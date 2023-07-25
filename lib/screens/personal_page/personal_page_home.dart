import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/personal_page/channel_channels_page.dart';
import 'package:youtube_clone/screens/personal_page/channel_live_page.dart';
import 'package:youtube_clone/screens/personal_page/channel_playlists_page.dart';
import 'package:youtube_clone/screens/personal_page/channel_shorts_page.dart';
import 'package:youtube_clone/screens/personal_page/channel_videos_page.dart';

import 'channel_home_page.dart';

class PersonalPageHome extends StatefulWidget {
  const PersonalPageHome({super.key});

  @override
  State<PersonalPageHome> createState() => _PersonalPageHomeState();
}

class _PersonalPageHomeState extends State<PersonalPageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Channel Name'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 4,
              child: PersonalCardProfile(),
            ),
            Expanded(
              flex: 7,
              //create tab bar
              child: DefaultTabController(
                length: 8,
                child: Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    toolbarHeight: 1,
                    bottom: const TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
                      indicatorWeight: 3,
                      tabs: [
                        Tab(
                          text: 'HOME',
                        ),
                        Tab(
                          text: 'VIDEOS',
                        ),
                        Tab(
                          text: 'SHORTS',
                        ),
                        Tab(
                          text: 'LIVE',
                        ),
                        Tab(
                          text: 'PLAYLISTS',
                        ),
                        Tab(
                          text: 'COMMUNITY',
                        ),
                        Tab(
                          text: 'CHANNELS',
                        ),
                        Tab(
                          text: 'ABOUT',
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      //TODO : Do the navigation of the tabs here.
                      ChannelHomePage(),
                      ChannelVideosPage(),
                      ChannelShortsPage(),
                      ChannelLivePage(),
                      ChannelPlaylistsPage(),
                      Center(
                        child: Text('COMMUNITY'),
                      ),
                      ChannelChannelsPage(),
                      Center(
                        child: Text('ABOUT'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//This widget creates the personal card profile.
class PersonalCardProfile extends StatelessWidget {
  const PersonalCardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 36,
            backgroundImage: AssetImage("assets/images/1.jpg"),
          ),
          const SizedBox(height: 10),
          const Text(
            'Akdeniz BT',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '@akdenizBT  4268 subscribers • 486 videos',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome to our computer science channel',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => PersonalSubscribePopup(),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[900],
              fixedSize: Size(
                MediaQuery.of(context).size.width * 0.9,
                40 + MediaQuery.of(context).size.height * 0.0001,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications_active),
                SizedBox(width: 10),
                Text('SUBSCRIBE'),
                SizedBox(width: 10),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//This widget creates the personal subscribe popup.
class PersonalSubscribePopup extends StatelessWidget {
  const PersonalSubscribePopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You are subscribed to this channel',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[900],
              fixedSize: Size(
                MediaQuery.of(context).size.width * 0.9,
                40 + MediaQuery.of(context).size.height * 0.0001,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications_active),
                SizedBox(width: 10),
                Text('NOTIFICATIONS'),
                SizedBox(width: 10),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[900],
              fixedSize: Size(
                MediaQuery.of(context).size.width * 0.9,
                40 + MediaQuery.of(context).size.height * 0.0001,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications_off),
                SizedBox(width: 10),
                Text('UNSUBSCRIBE'),
                SizedBox(width: 10),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
