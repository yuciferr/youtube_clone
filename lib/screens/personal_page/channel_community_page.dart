import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

class ChannelCommunityPage extends StatefulWidget {
  const ChannelCommunityPage({super.key});

  @override
  State<ChannelCommunityPage> createState() => _ChannelCommunityPageState();
}

class _ChannelCommunityPageState extends State<ChannelCommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            CommentCard(
                comment:
                    'Join us March 17th at 9am PT for a deep dive on the latest Android tools and Jetpack updates to help you build better apps, faster. ',
                dislike: '1',
                like: '469',
                name: 'Akdeniz BT',
                time: '1 day ago'),
            const Divider(
              color: MyColors.grey,
            ),
            CommentCard(
              comment:
                  "Don't miss out on the exciting tech event of the year! Mark your calendars for March 17th at 9am PT to explore the cutting-edge Android",
              like: '2',
              name: 'Akdeniz BT',
              time: '2 day ago',
              dislike: '6',
            ),
            const Divider(
              color: MyColors.grey,
            ),
            CommentCard(
                comment:
                    'Join us March 17th at 9am PT for a deep dive on the latest Android tools and Jetpack updates to help you build better apps, faster. ',
                dislike: '1',
                like: '469',
                name: 'Akdeniz BT',
                time: '3 day ago'),
            const Divider(
              color: MyColors.grey,
            ),
            CommentCard(
              comment:
                  "Don't miss out on the exciting tech event of the year! Mark your calendars for March 17th at 9am PT to explore the cutting-edge Android",
              like: '2',
              name: 'Akdeniz BT',
              time: '4 day ago',
              dislike: '6',
            ),
            const Divider(
              color: MyColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  String name;
  String time;
  String comment;

  String like;
  String dislike;

  CommentCard({
    required this.name,
    required this.time,
    required this.comment,
    required this.like,
    required this.dislike,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.blackMain,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 1),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 240,
        child: Expanded(
          child: Column(
            children: [
              Row(children: [
                const CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/images/1.jpg'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      comment,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    like,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.thumb_down_alt_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    dislike,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'SHARE',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/images/2.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Add a public comment...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
