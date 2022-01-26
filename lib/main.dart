import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_demo/core/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone_demo/core/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone_demo/core/responsive/web_screen_layout.dart';
import 'package:instagram_clone_demo/core/screens/login_screen.dart';
import 'package:instagram_clone_demo/core/screens/signup_screen.dart';
import 'package:instagram_clone_demo/core/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //     webScreenLayout: WebScreenLayout(),
      //     mobileScreenLayout: MobileScreenLayout()),
      home: SignupScreen(),
    );
  }
}
