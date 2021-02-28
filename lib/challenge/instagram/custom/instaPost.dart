import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 15,
          backgroundImage: AssetImage('assets/pic.jpeg'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "mhamzadev",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Islamabad, Pakistan",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015),
            )
          ],
        ),
        Expanded(
          child: Container(),
        ),
        InkWell(
          child: Icon(Icons.more_vert),
          onTap: () {},
        )
      ],
    );
  }
}

class PostImage extends StatelessWidget {
  final bool assetImage;
  PostImage({@required this.assetImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(assetImage ? "assets/wall.jpg" : "assets/image.png"),
      ),
    );
  }
}

class PostOption extends StatefulWidget {
  @override
  _PostOptionState createState() => _PostOptionState();
}

class _PostOptionState extends State<PostOption> {
  bool like = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        IconButton(
            icon: Icon(
              like ? Icons.favorite_border : Icons.favorite,
              size: height * 0.035,
              color: like ? Colors.black : Colors.red,
            ),
            onPressed: () {
              setState(() {
                like = !like;
              });
            }),
        IconButton(
            icon: Icon(
              Icons.comment,
              size: height * 0.035,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.send_outlined,
              size: height * 0.035,
            ),
            onPressed: () {}),
        Expanded(
          child: Container(),
        ),
        IconButton(
            icon: Icon(
              Icons.bookmark_border,
              size: height * 0.035,
            ),
            onPressed: () {}),
      ],
    );
  }
}

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "192 Likes",
            style: TextStyle(
                fontSize: height * 0.015, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 13,
                backgroundImage: AssetImage('assets/pic.jpeg'),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Expanded(
                child: SizedBox(
                  height: height * 0.02,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                      hintStyle: TextStyle(
                          letterSpacing: 1.0, fontSize: height * 0.015),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
