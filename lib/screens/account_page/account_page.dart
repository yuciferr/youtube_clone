import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/image_strings.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text(
          'Accounts',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // User Profile gidecek
                      },
                      child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://icon-library.com/images/no-user-image-icon/no-user-image-icon-29.jpg'),
                          radius: 26),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'User',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'user@gmail.com',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      color: Colors.white,
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  // color: Colors.white,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      'Your channel',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  // color: Colors.white,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      'Turn on Incognito',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  // color: Colors.white,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person_add_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    label: const Text(
                      'Add account',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  // color: Colors.white,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Log out',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
