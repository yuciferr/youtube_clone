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
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalCardProfile extends StatelessWidget {
  const PersonalCardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
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
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Welcome to our computer science channel',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey[900],
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.9,
                  40,
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
      ),
    );
  }
}
