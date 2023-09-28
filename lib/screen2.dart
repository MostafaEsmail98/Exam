import 'package:exam/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static const String routeName = "screen2";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Mostafa"),
            bottom: TabBar(tabs: [
              Badge(
                  child: Tab(
                    text: "home",
                    icon: Icon(Icons.home),
                  ),
                  backgroundColor: Colors.white,
                  isLabelVisible: true,
                  label: Text(
                    "5",
                    style: TextStyle(color: Colors.red),
                  )),
              Badge(
                child: Tab(
                  text: "home",
                  icon: Icon(Icons.home),
                ),
              ),
              Tab(
                text: "home",
                icon: Icon(Icons.home),
              )
            ])),
        body: TabBarView(
          children: [
            Center(
              child: Text("1"),
            ),
            Center(
              child: Text("2"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Screen3.routeName);
                }, child: Icon(Icons.imagesearch_roller_sharp))
          ],
        ),
      ),
    );
  }
}
