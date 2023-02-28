import 'package:college_app/page1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'College App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<Widget> pages = <Widget>[
    Page1(),
    Page1(),
    Page1(),
    Page1(),
  ];

  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
              backgroundColor: Color(0xFF0E3C6E),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Account',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              unselectedItemColor: Color(0xFFBBBBBB),
              iconSize: 24,
              unselectedIconTheme: IconThemeData(color: Color(0xFFBBBBBB)),
              onTap: _onItemTapped,
              selectedIconTheme: IconThemeData(
                color: Colors.white,
              ),
              selectedItemColor: Colors.white,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              elevation: 5),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
