import 'package:flutter/material.dart';
import 'package:take_home_challenge/challenge/const.dart';
import 'package:take_home_challenge/challenge/instagram/instagram.dart';
import 'package:take_home_challenge/challenge/pdf_viewer/pdf_viewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Take Home Challenge",
              style: ktakeHomeChallenge,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.06,
              child: FlatButton(
                shape: StadiumBorder(),
                color: Colors.red.withAlpha(150),
                child: Text("PDF Viewer Challenge"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PDFViewer())),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.06,
              child: FlatButton(
                shape: StadiumBorder(),
                color: Colors.orange.withAlpha(150),
                child: Text("Instagram Challenge"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Instagram())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
