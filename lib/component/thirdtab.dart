import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

final Uri facebook_URL = Uri.parse('https://www.facebook.com');
final Uri instagram_URL = Uri.parse('https://www.instagram.com/abcit000/');


Future<void> FACEBOOK_FUNCTION() async {
  if (!await launchUrl(facebook_URL)) {
    throw 'Could not launch $facebook_URL';
  }
}
Future<void> INSTAGRAM_FUNCTION() async {
  if (!await launchUrl(instagram_URL)) {
    throw 'Could not launch $instagram_URL';
  }
}

class ThirdTab extends StatelessWidget {
  ThirdTab({required this.subTitle, required this.title,required this.myTapFunction,
  required this.myicon});

  String? title;
  String? subTitle;
  Function()? myTapFunction ; 
  IconData? myicon ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myTapFunction,
      child: ListTile(
        title: Text("$title"),
        subtitle: Text("$subTitle"),
        leading: Icon(myicon),
      ),
    );
  }
}
