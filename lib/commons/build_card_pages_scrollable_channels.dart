import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BuildCardPagesScrollableChannels extends StatelessWidget {
  const BuildCardPagesScrollableChannels({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: MyColors.greyVideo,
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
