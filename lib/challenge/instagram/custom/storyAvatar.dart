import 'package:flutter/material.dart';

class StoryAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 38.0,
      backgroundColor: Colors.red,
      child: CircleAvatar(
        maxRadius: 35.0,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          maxRadius: 32.0,
          backgroundImage: AssetImage('assets/pic.jpeg'),
        ),
      ),
    );
  }
}

class MyStoryAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          minRadius: 38.0,
          backgroundColor: Colors.grey.withAlpha(100),
          child: CircleAvatar(
            maxRadius: 36.0,
            backgroundImage: AssetImage('assets/pic.jpeg'),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.01,
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 15,
              ),
            ),
          ),
        )
      ],
    );
  }
}
