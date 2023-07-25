import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';

Widget commentsBottomSheet(BuildContext context) {
  return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      color: MyColors.blackMain,
      child: Container(
        decoration: const BoxDecoration(
          color: MyColors.greyButton,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: MyColors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: const [
                    Text(
                      'Comments',
                      style: TextStyle(
                        color: MyColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '102K',
                        style: TextStyle(
                          color: MyColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.sort, color: MyColors.white)),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.close_sharp, color: MyColors.white)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            const Divider(color: MyColors.grey),

            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[300],
                    ),
                    title: Row(
                      children: [
                        Text(
                          'User $index ',
                          style: const TextStyle(
                            color: MyColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '• 1 day ago',
                          style: TextStyle(
                            color: MyColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert, color: MyColors.white),
                        ),

                      ],
                    ),
                    subtitle: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children:[
                            const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eget nunc vitae tortor aliquam aliquet. ',
                              style: TextStyle(
                                color: MyColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: const [
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.thumb_up_off_alt, color: MyColors.grey),
                                ),
                                Text(
                                  '1.2K',
                                  style: TextStyle(
                                    color: MyColors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 16),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.thumb_down_off_alt, color: MyColors.grey),
                                ),
                                SizedBox(width: 16),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.reply_outlined, color: MyColors.grey),
                                ),
                                Text(
                                  '120',
                                  style: TextStyle(
                                    color: MyColors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  '10 replies',
                                  style: TextStyle(
                                    color: MyColors.blueTextButton,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                  );
                },
              ),
            ),
          ],
        ),
      ));
}
