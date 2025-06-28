import 'package:flutter/material.dart';
import 'package:finalhemocycle/pages/splashscreen.dart';
import 'package:finalhemocycle/widgets/navigation_bar.dart';  // Your main home with navigation
import 'package:finalhemocycle/pages/about_us.dart';
import 'package:finalhemocycle/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HemoCycle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const SplashScreen(), // Splash comes first
      routes: {
        '/home': (context) => NavigationController(),  // Your main app
        '/profile': (context) => const ProfilePage(),
        '/us': (context) => const AboutUsPage(),
      },
    );
  }
}
