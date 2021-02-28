import 'package:flutter/material.dart';
import 'package:take_home_challenge/animations/bottomAnimation.dart';
import 'package:take_home_challenge/challenge/instagram/custom/instaPost.dart';
import 'package:take_home_challenge/challenge/instagram/custom/storyAvatar.dart';

class HomeInsta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                ),
                separatorBuilder: (context, index) {
                  return VerticalDivider(
                    color: Colors.transparent,
                    thickness: width * 0.2,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return MyStoryAvatar();
                  }
                  return StoryAvatar();
                }),
          ),
          Expanded(
              flex: 5,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.transparent,
                      height: height * 0.03,
                    );
                  },
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return WidgetAnimator(
                        child: Post(
                      isEven: index % 2 == 0 ? true : false,
                    ));
                  }))
        ],
      ),
    );
  }
}

class Post extends StatelessWidget {
  final bool isEven;
  Post({this.isEven});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserInfo(),
            PostImage(
              assetImage: isEven,
            ),
            PostOption(),
            CommentSection()
          ],
        ),
      ),
    );
  }
}
