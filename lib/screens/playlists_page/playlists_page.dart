import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/screens/search_page/search_page.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
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
          title: const Text('Playlists'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );

              },
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
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Chip(
                        backgroundColor: Colors.grey[900],
                        label: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Recently added',
                              style: TextStyle(
                                color: MyColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: MyColors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: ListView(
                  children: const [
                    PlaylistItem(
                        title: "Liked Videos",
                        isPrivate: true,
                        videoCount: 213,
                        isLiked: true),
                    PlaylistItem(
                        title: "Flutter", isPrivate: false, videoCount: 213),
                    PlaylistItem(
                        title: "Watch Later", isPrivate: false, videoCount: 21, isSaved: true),
                    PlaylistItem(
                        title: "Music", isPrivate: false, videoCount: 103),
                    PlaylistItem(
                        title: "Coding", isPrivate: false, videoCount: 13),
                    PlaylistItem(
                        title: "Flutter", isPrivate: false, videoCount: 23),
                    PlaylistItem(
                        title: "Watch", isPrivate: false, videoCount: 21),
                  ],
                ),
              ),
            ])));
  }
}

class PlaylistItem extends StatelessWidget {
  final String title;
  final bool isPrivate;
  final int videoCount;
  final bool isLiked;
  final bool isSaved;

  const PlaylistItem({
    Key? key,
    required this.title,
    required this.isPrivate,
    required this.videoCount,
    this.isLiked = false,
    this.isSaved = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Stack(alignment: Alignment.center, children: [
              Container(
                height: 88,
                width: 154,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/200'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isLiked)
                Center(
                  child: Container(
                    height: 88,
                    width: 154,
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.thumb_up_alt,
                          color: MyColors.white,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '$videoCount',
                          style: const TextStyle(
                            color: MyColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if(isSaved)
                Center(
                  child: Container(
                    height: 88,
                    width: 154,
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.watch_later_outlined,
                          color: MyColors.white,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '$videoCount',
                          style: const TextStyle(
                            color: MyColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if(!isLiked && !isSaved)
                Column(
                  children: [
                    const SizedBox(
                      height: 63,
                    ),
                    Container(
                        height: 25,
                        width: 154,
                        color: Colors.black.withOpacity(0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.playlist_play_outlined,
                              color: MyColors.white,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              '$videoCount',
                              style: const TextStyle(
                                color: MyColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: MyColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  if (isPrivate)
                    const Text(
                      'Private',
                      style: TextStyle(
                        color: MyColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  if (!isPrivate)
                    const Text(
                      'Public',
                      style: TextStyle(
                        color: MyColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: MyColors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
