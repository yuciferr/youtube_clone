import 'package:flutter/material.dart';

import '../playlists_page/playlists_page.dart';

class ChannelPlaylistsPage extends StatefulWidget {
  const ChannelPlaylistsPage({super.key});

  @override
  State<ChannelPlaylistsPage> createState() => _ChannelPlaylistsPageState();
}

class _ChannelPlaylistsPageState extends State<ChannelPlaylistsPage> {
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
                  PlaylistItem(
                      title: "Liked Videos",
                      isPrivate: true,
                      videoCount: 213,
                      isLiked: true),
                  PlaylistItem(
                      title: "Watch Later",
                      isPrivate: false,
                      videoCount: 21,
                      isSaved: true),
                  PlaylistItem(
                      title: "Flutter", isPrivate: false, videoCount: 213),
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
          ],
        ),
      ),
    );
  }
}
