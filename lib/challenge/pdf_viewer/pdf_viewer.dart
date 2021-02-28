import 'package:flutter/material.dart';
import 'package:take_home_challenge/challenge/pdf_viewer/files.dart';
import 'package:take_home_challenge/challenge/pdf_viewer/home.dart';
import 'package:take_home_challenge/challenge/pdf_viewer/search.dart';
import 'package:take_home_challenge/challenge/pdf_viewer/shared.dart';

class PDFViewer extends StatefulWidget {
  @override
  _PDFViewerState createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  int _selectedIndex = 0;

  List<Widget> _screens = <Widget>[
    HomeScreen(),
    FilesScreen(),
    SharedScreen(),
    SearchScreen()
  ];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.file_copy),
      label: 'Files',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.group),
      label: 'Shared',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
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
          leading: SizedBox(
            height: 15,
            width: 15,
            child: Image.asset(
              'assets/acrobat.png',
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: _bottomNavBarItems,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}
