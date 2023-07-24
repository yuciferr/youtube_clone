import 'package:flutter/material.dart';

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
              flex: 3,
              child: PersonalCardProfile(),
            ),
            //const ScrollViewPersonal(),
            Expanded(
              flex: 6,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: const TabBar(
                      tabs: [
                        Tab(text: 'HOME'),
                        Tab(text: 'VIDEOS'),
                        Tab(text: 'PLAYLISTS'),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      Icon(Icons.close),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
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

class ScrollViewPersonal extends StatefulWidget {
  const ScrollViewPersonal({
    Key? key,
  }) : super(key: key);

  @override
  State<ScrollViewPersonal> createState() => _ScrollViewPersonalState();
}

class _ScrollViewPersonalState extends State<ScrollViewPersonal> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //Add Home, Videos, Playlists, Channels, About widgets here.
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.red,
                  width: 3,
                ),
              ),
            ),
            child: TextButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                'HOME',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text(
              'VIDEOS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'SHORTS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'LIVE',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'PLAYLISTS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'COMMUNITY',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'CHANNELS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'ABOUT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
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
