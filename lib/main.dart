import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:undraw/undraw.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            UnDraw(
              alignment: Alignment.topCenter,
              height: 300,
              color: Colors.red,
              // Share link
              illustration: UnDrawIllustration.social_thinking,
              placeholder: Text(
                  "Illustration is loading..."), //optional, default is the CircularProgressIndicator().
            ),
            Text(
              "Invite Your Friend",
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Are you one of those who makes eveything at the last moment',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            RaisedButton.icon(
              elevation: 5.0,
              label: Text(
                'Share',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              color: Colors.teal[300],
              onPressed: () => Share.share(
                  'check out my App https://play.google.com/store/apps/details?id=com.alltechsavvy.calculator'),
            ),
          ],
        )));
  }
}
