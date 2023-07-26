import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

import '../../commons/build_channel_single_post.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
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
          title: Container(
            decoration: BoxDecoration(
              color: MyColors.greyButton,
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                style: TextStyle(
                  color: MyColors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  hintText: 'Yusuf Celik',
                  hintStyle: TextStyle(
                    color: MyColors.white,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.greyButton,
                      shape: const CircleBorder()),
                  child: const Icon(
                    Icons.mic,
                    color: MyColors.white,
                    size: 25,
                  )),
            ),
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Divider(
                  height: 2,
                  color: MyColors.greyVideo,
                ),
                const SizedBox(height: 8),
                const PersonalCardProfile(),
                const SizedBox(height: 8),
                const Divider(
                  height: 2,
                  color: MyColors.greyVideo,
                ),
               Column(
                    children: const [
                      BuildChannelSinglePost(
                        postImage: MyImageStrings.dummyDataChannelYusufImage,
                        channelImage: MyImageStrings.dummyDataChannelYusufImage,
                        postDescription: MyStrings.postStringsYusufJobPostTitle,
                        channelDescription:
                        MyStrings.postStringsYusufJobPostDescription,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ]));
  }
}

class SearchItem extends StatelessWidget {
  final String title;

  const SearchItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.history_outlined,
          color: MyColors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        trailing: const Icon(
          Icons.arrow_forward_outlined,
          color: MyColors.white,
        ));
  }
}

class PersonalCardProfile extends StatelessWidget {
  const PersonalCardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(width: 24),
            const CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage(MyImageStrings.dummyDataChannelYusufImage),
            ),
            const SizedBox(width: 48),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Yusuf Celik',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '@yuciferr',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '4268 subscribers',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const PersonalSubscribePopup(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.grey[900],
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.4,
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
                      SizedBox(width: 4),
                      Text('Subscribed', style: TextStyle(fontSize: 12)),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
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
