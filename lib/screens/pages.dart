import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:proji/component/firsttab.dart';
import 'package:proji/component/secondComponent.dart';
import 'package:proji/component/thirdtab.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            bottom: TabBar(tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.laptop)),
              IconButton(onPressed: () {}, icon: Icon(Icons.laptop)),
              IconButton(onPressed: () {}, icon: Icon(Icons.laptop)),
            ]),
          ),
          body: Container(
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    FirstTab(
                      myImage:
                          "https://1.bp.blogspot.com/-n3YUsCOh3WI/VVmjQm2RCwI/AAAAAAAACBY/oBqTcuLmF1o/s1600/337171-dell-inspiron-14r-5437%2B(1).jpg",
                      subTitle: "black and white",
                      title: "Dell",
                    ),
                    FirstTab(
                      myImage:
                          "https://th.bing.com/th/id/R.5eb9e69e6180da97bebad692e12612db?rik=giCh4WaFy7NLMg&riu=http%3a%2f%2fwww.shivammumbai.in%2fwp-content%2fuploads%2f2019%2f05%2fToshiba-Laptop.jpg&ehk=VkguSwRQv6OyegfeKfalepaxvdMlsqd6ztCDlCxWBmY%3d&risl=&pid=ImgRaw&r=0",
                      title: "toshiba",
                      subTitle: "White and Gray",
                    ),
                    FirstTab(
                      myImage:
                          "https://th.bing.com/th/id/R.3bad6fb107093f842cc924fed4e05e50?rik=%2fWl5pUlisC1Bzg&pid=ImgRaw&r=0",
                      title: "Hp",
                      subTitle: "White and pink",
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SecondTab(
                      myImage:
                          "https://th.bing.com/th/id/R.298d3bb8ec97f3e1ec16f5000b17b673?rik=U8Q7aqNHjcZI0Q&pid=ImgRaw&r=0",
                      subTitle: "black and white",
                      title: "iphone",
                    ),
                    SecondTab(
                      myImage:
                          "https://th.bing.com/th/id/OIP.TfWj9RYPUQKKID0K71M6BAHaGx?pid=ImgDet&rs=1",
                      title: "huwaie",
                      subTitle: "White and Gray",
                    ),
                    SecondTab(
                      myImage:
                          "https://th.bing.com/th/id/R.a67bb0661fff80a9d6b162cfd2253d15?rik=Uvy66B5J%2b2p1Mw&pid=ImgRaw&r=0",
                      title: "samsung",
                      subTitle: "White and pink",
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ThirdTab(
                    myicon: Icons.facebook,
                      subTitle: "join facebook page",
                      title: "facebook",
                      myTapFunction: FACEBOOK_FUNCTION),
                  ThirdTab(
                    myicon: Ionicons.logo_instagram,
                    subTitle: "join instagram page",
                    title: "instagram",
                    myTapFunction: INSTAGRAM_FUNCTION,
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
