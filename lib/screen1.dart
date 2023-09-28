import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static const String routeName = "screen1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Column(children: [
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              Container(
                color: Colors.blue,
                child: Image.asset("asset/image/person${itemIndex}.jpg"),
              ), options: CarouselOptions(height: 100,autoPlay: true,aspectRatio: 16/9,scrollDirection: Axis.vertical,),

        )
      ,ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, Screen2.routeName);
        }, child:Icon(Icons.import_contacts) )]),
    );
  }
}
