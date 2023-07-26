import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/screens/account_page/login/login_screen.dart';
import 'package:youtube_clone/screens/home_screen/main_with_bottom_navbar.dart';
import 'package:youtube_clone/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// class MainBottom extends StatelessWidget {
//   const MainBottom({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: MyColors.blackMain,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 10.0),
//             child: BottomNav(),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
        backgroundColor: MyColors.blackMain,
        scaffoldBackgroundColor: MyColors.blackMain,
        appBarTheme: const AppBarTheme(
          backgroundColor: MyColors.blackMain,
          elevation: 2,
          titleTextStyle: TextStyle(
            color: MyColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: MyColors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          headline2: TextStyle(
            color: MyColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          headline3: TextStyle(
            color: MyColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          headline4: TextStyle(
            color: MyColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          headline5: TextStyle(
            color: MyColors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          headline6: TextStyle(
            color: MyColors.white,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: MyColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            color: MyColors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        accentColor: MyColors.blueTextButton,
        buttonTheme: const ButtonThemeData(
          // buttonColor: MyColors.redButton,
          // textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
        ),
      ),
      home: const WidgetTree(),
    );
  }
}
