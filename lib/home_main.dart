import 'package:DemoFlutter/webview_lib_one.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Demo Webview"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            FlatButton(
              child: Text(
                  'Demo webview : https://pub.dev/packages/webview_flutter'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              color: Color(0xff0c9869),
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            FlatButton(
              child: Text(
                  'Demo webview : https://github.com/pichillilorenzo/flutter_inappwebview'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Color(0xff0c9869),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            FlatButton(
              child: Text(
                  'Demo webview : https://pub.dev/packages/flutter_webview_plugin'),
              onPressed: () {
                Navigator.pushNamed(context, '/three');
              },
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              textColor: Colors.white,
              color: Color(0xff0c9869),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
