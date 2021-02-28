import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_home_challenge/challenge/instagram/homeinsta.dart';
import 'package:take_home_challenge/challenge/instagram/notificationsinsta.dart';
import 'package:take_home_challenge/challenge/instagram/postinsta.dart';
import 'package:take_home_challenge/challenge/instagram/profileinsta.dart';
import 'package:take_home_challenge/challenge/instagram/searchinsta.dart';

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _selectedIndex = 0;

  List<Widget> _screens = <Widget>[
    HomeInsta(),
    SearchInsta(),
    PostInsta(),
    NotificationsInsta(),
    ProfileInsta(),
  ];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.post_add),
      label: 'Post',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border),
      label: 'Shared',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 0,
          leading: Text(""),
          title: Text(
            "Instagram",
            style: GoogleFonts.pacifico(color: Colors.black),
          ),
          actions: [
            InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/messenger.png',
                )),
          ],
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: _bottomNavBarItems,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showSelectedLabels: false,
        ),
      ),
    );
  }
}
