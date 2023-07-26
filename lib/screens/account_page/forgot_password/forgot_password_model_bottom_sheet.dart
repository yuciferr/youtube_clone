import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/text_strings.dart';

import 'forgot_password_btn_widget.dart';
import 'forgot_password_mail.dart';
import 'forgot_password_phone.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyStrings.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              MyStrings.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: "E-mail",
              subtitle: MyStrings.resetViaEmail,
              onTap: () {
                Navigator.pop(context); //bottom sheetten öncekine döneriz
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ForgotPasswordMailScreen()));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: "Phone",
              subtitle: MyStrings.resetViaPhone,
              onTap: () {
                Navigator.pop(context); //bottom sheetten öncekine döneriz
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ForgotPasswordPhoneScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
