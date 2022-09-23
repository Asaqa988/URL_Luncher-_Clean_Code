import 'package:flutter/material.dart';
import 'package:proji/screens/pages.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.pages),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Pages();
                  })));
                },
                label: Text("apps"),
              ),
            )
          ],
          title: Row(
            children: [Text("Home Page"), Icon(Icons.home)],
          )),
      body: Container(),
    );
  }
}
