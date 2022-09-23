import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  SecondTab(
      {required this.myImage, required this.subTitle, required this.title});

  String? title;
  String? subTitle;
  String? myImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 800,
          width: double.infinity,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            children: [
              Image(width: 50, image: NetworkImage("$myImage")),
              Divider(
                height: 20,
              ),
              Container(
                child: ListTile(
                    leading: Icon(Icons.laptop),
                    title: Text("$title"),
                    subtitle: Text(
                      "$subTitle",
                    )),
              ),
            ],
          )),
    );
  }
}
