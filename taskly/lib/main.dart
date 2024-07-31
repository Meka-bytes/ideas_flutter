import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:taskly/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:taskly/pages/profile_page.dart';
import 'package:taskly/pages/task_page.dart';

void main() async {
  // locking the orientation of the device
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _pageIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    TaskPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        // bottom nav barr
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 15.0,
            ),
            child: GNav(
              onTabChange: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              backgroundColor: Colors.black,
              color: Colors.white,
              gap: 8,
              activeColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
              tabBackgroundColor: Colors.white12,
              tabs: const [
                GButton(
                  icon: Icons.home_rounded,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.task_rounded,
                  text: 'Tasks',
                ),
                GButton(
                  icon: Icons.account_circle_rounded,
                  text: 'Profile',
                )
              ],
              selectedIndex: _pageIndex,
            ),
          ),
        ),
        body: _pages[_pageIndex],
      ),
    );
  }
}
