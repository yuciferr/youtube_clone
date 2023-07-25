import 'package:flutter/material.dart';

class VideoPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white, // Üst kısmın arka plan rengi beyaz
              child: Image.asset(
                'assets/images/video_player_page_images/fro.png',
                fit: BoxFit.cover, // Resmi tamamen kaplayacak şekilde düzenledik
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Front-End Pişmalık Mı?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1.1M View\t\t6 day ago\t\t more...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/video_player_page_images/pp.jpeg'),
                          radius: 20,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Onur Çetin',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '5.2M Subscriber',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Abone ol butonuna tıklandığında yapılacak işlemler
                          },
                          child: Text(
                            'Subscribe',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red, // Kırmızı renk
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Bildirim ikonuna tıklandığında yapılacak işlemler
                          },
                          icon: Icon(
                            Icons.notifications_off,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Like butonuna basıldığında yapılacak işlemler
                        },
                        icon: Icon(Icons.thumb_up),
                        color: Color(0xFF171212), // Like butonunun rengi
                        iconSize: 20,
                      ),
                      Text(
                        '89K', // Like sayısı
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {
                          // Dislike butonuna basıldığında yapılacak işlemler
                        },
                        icon: Icon(Icons.thumb_down),
                        color: Color(0xFF171212), // Dislike butonunun rengi
                        iconSize: 20,
                      ),
                      IconButton(
                        onPressed: () {
                          // Share butonuna basıldığında yapılacak işlemler
                        },
                        icon: Icon(Icons.share),
                        color: Color(0xFF171212), // Share butonunun rengi
                        iconSize: 20,
                      ),
                      Text(
                        'Share', // Share butonunun altında metin
                        style: TextStyle(fontSize: 17, color: Color(0xFF171212)), // Share metni rengi
                      ),
                      IconButton(
                        onPressed: () {
                          // Download butonuna basıldığında yapılacak işlemler
                        },
                        icon: Icon(Icons.download),
                        color: Color(0xFF171212), // Download butonunun rengi
                        iconSize: 20,
                      ),
                      Text(
                        'Download', // Download butonunun altında metin
                        style: TextStyle(fontSize: 17, color: Color(0xFF171212)), // Download metni rengi
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Comments   194', // Comments başlığı ve sayısı
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bedirhan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Pişmanlık değil hocam'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                 SizedBox(
              child: Column(
                children: [
                  Stack(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 400,
                          height: 200,
                          child: Image.asset(
                           'assets/images/video_player_page_images/menu_3.jpg',
                        // Resmi tamamen kaplayacak şekilde düzenledik
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0, // Align at the bottom
                        right: 0, // Align at the right
                        child: Container(
                          color: Colors.black,
                          // padding: const EdgeInsets.all(
                          //     8), // Adding some padding around the text
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '6:24',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // User Profile gidecek
                        },
                        child: CircleAvatar(
                            backgroundImage: AssetImage(
                                 'assets/images/video_player_page_images/ava1.png',
                                ),
                            radius: 26),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Don Omar-Danza Kuduro',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Don Omar 201M views 7 years ago',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_sharp,
                        ),
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
              
            SizedBox(height: 12,),
                 SizedBox(
              child: Column(
                children: [
                  Stack(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 400,
                          height: 200,
                          child: Image.asset(
                           'assets/images/video_player_page_images/menu_5.jpg',
                        // Resmi tamamen kaplayacak şekilde düzenledik
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0, // Align at the bottom
                        right: 0, // Align at the right
                        child: Container(
                          color: Colors.black,
                          // padding: const EdgeInsets.all(
                          //     8), // Adding some padding around the text
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '4:25',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // User Profile gidecek
                        },//***************************************** */
                        child: CircleAvatar(
                            backgroundImage: AssetImage(
                                 'assets/images/video_player_page_images/ava2.png',
                                ),
                            radius: 26),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gangnam Style-(Acustic)',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'ÇanÇinÇon 2M views 13 years ago',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_sharp,
                        ),
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
                   SizedBox(height: 12),
                 SizedBox(
              child: Column(
                children: [
                  Stack(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 400,
                          height: 200,
                          child: Image.asset(
                           'assets/images/video_player_page_images/web.jpg',
                        // Resmi tamamen kaplayacak şekilde düzenledik
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0, // Align at the bottom
                        right: 0, // Align at the right
                        child: Container(
                          color: Colors.black,
                          // padding: const EdgeInsets.all(
                          //     8), // Adding some padding around the text
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              '7:23',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // User Profile gidecek
                        },
                        child: CircleAvatar(
                            backgroundImage: AssetImage(
                                 'assets/images/video_player_page_images/ava3.png',
                                ),
                            radius: 26),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Web Design Serüvenim',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Uğur Akın 38 views 3 hourss ago',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_sharp,
                        ),
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
                               
                  // Diğer video önerileri buraya eklenebilir
                ],
              ),
            ),
            // Burada yorumlar, video önerileri veya diğer içerikler eklenebilir.
          ],
        ),
      ),
    );
  }
}
