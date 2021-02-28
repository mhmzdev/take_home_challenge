import 'package:flutter/material.dart';
import 'package:take_home_challenge/animations/bottomAnimation.dart';
import 'package:take_home_challenge/challenge/const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Text(""),
        leadingWidth: 0,
        title: Text(
          "Welcome Back, Hamza",
          style: TextStyle(
              color: Colors.black,
              fontSize: height * 0.03,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: width * 0.02,
        ),
        child: Column(
          children: [
            TabBarListTile(),
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ListTile(
                    onTap: () {},
                    leading: Image.asset(
                      'assets/adobeFile.png',
                      height: height * 0.05,
                    ),
                    title: Text("Adobe File Name 21"),
                    subtitle: Text("PDF - 1 Feb, 2021 - 23.0 KB"),
                    trailing: IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class TabBarListTile extends StatefulWidget {
  @override
  _TabBarListTileState createState() => _TabBarListTileState();
}

class _TabBarListTileState extends State<TabBarListTile> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  isSelected = true;
                });
              },
              child: Text(
                "Recent",
                style: isSelected ? kUnderlineStyle : null,
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          InkWell(
            onTap: () {
              setState(() {
                isSelected = false;
              });
            },
            child: Text(
              "Starred",
              style: !isSelected ? kUnderlineStyle : null,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
