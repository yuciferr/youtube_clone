import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                  fontSize: 16,),
              decoration: InputDecoration(
                hintText: 'Search YouTube',
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
          )
        ],
      ),
      body: ListView(
        children: const [
          SearchItem(title: 'Shorts'),
          SearchItem(title: 'Upload a video'),
        ],
      ),
    );
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
