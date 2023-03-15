import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class fltr extends StatefulWidget {
  const fltr({Key? key}) : super(key: key);

  @override
  State<fltr> createState() => _NavState();
}

class _NavState extends State<fltr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Card(
            elevation: 10,
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Colors.blue.shade300,

                      ]
                  )
              ),
              child: Column(children: [
                Padding(padding: EdgeInsets.all(10)),
                Text("Flutter", style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
                FlutterLogo(
                  size: 30,
                ),

                Padding(padding: EdgeInsets.all(10), child: Text(""
                    "Flutter is an open-source UI Software\n"
                    "development kit created by Google.it\n"
                    "is used to develop cross-platform\n"
                    "application for Android,iOS,Linux,\n"
                    "macOS,Windows,Google Fuchsia,and\n"
                    "the web from a single codebase.First\n"
                    "described in 2015,Flutter was realeased\n"
                    "in May 2017", style: TextStyle(color: Colors.white),),
                ),

                ElevatedButton.icon(onPressed: () {
                  _launchURL();
                }, icon: Icon(Icons.touch_app_outlined),
                  label: Text("Visit"),

                )
              ]),


            ),
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
