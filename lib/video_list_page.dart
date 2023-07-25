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
                'assets/images/fro.png',
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
                        backgroundImage: AssetImage('assets/images/pp.jpeg'),
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
                      Icon(
                        Icons.notifications_off,
                        size: 24,
                        color: Colors.grey,
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
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                   SizedBox(height: 16),
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                   SizedBox(height: 16),
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                   SizedBox(height: 16),
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                   SizedBox(height: 16),
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                   SizedBox(height: 16),
                  Text(
                    'Sonraki video başlık', // Sonraki video başlık metni
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 16),
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
