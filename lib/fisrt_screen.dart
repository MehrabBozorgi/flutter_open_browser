import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('open Google'),
          onPressed: () {
            _launchInBrowser('https://www.google.com/');
          },
        ),
      ),
    );
  }
}
