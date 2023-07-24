import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

class AllSubscriptionsPage extends StatefulWidget {
  const AllSubscriptionsPage({super.key});

  @override
  State<AllSubscriptionsPage> createState() => _AllSubscriptionsPageState();
}

class _AllSubscriptionsPageState extends State<AllSubscriptionsPage> {
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
          title: const Text('All Subscriptions'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_active),
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
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      const Text(
                        'Most relevant',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down, color: MyColors.white,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: ListView(
                  children: const [
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                    SubscriptionItem(),
                  ],
                ),
              ),
            ])));
  }
}

class SubscriptionItem extends StatelessWidget {
  const SubscriptionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                radius: 36,
                backgroundImage: AssetImage("assets/images/1.jpg"),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Akdeniz BT',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.grey[900],
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.2,
                  MediaQuery.of(context).size.height * 0.05,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.notifications_none_outlined),
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
