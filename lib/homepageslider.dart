import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GownHorizontal extends StatefulWidget {
  const GownHorizontal({Key? key}) : super(key: key);

  @override
  State<GownHorizontal> createState() => _GownHorizontalState();
}

class _GownHorizontalState extends State<GownHorizontal> {
  int activeIndex = 0;
  final gownimages = [
    "assets/images/afrigown1.jpg",
    "assets/images/gown2.jpg",
    "assets/images/afrigown3.jpg",
    "assets/images/abaya1.jpg",
    "assets/images/gown5.jpg",
    "assets/images/gown10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SizedBox(
        // color: Colors.grey,
        // height: 800,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                itemCount: 6,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 100),
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  autoPlayInterval: Duration(seconds: 4),
                  pauseAutoPlayOnTouch: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemBuilder: (context, index, realindex) {
                  final gownimage = gownimages[index];
                  return buildImage(gownimage, index);
                },
              ),
              const SizedBox(
                height: 2,
              ),
              buildIndicator()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: gownimages.length,
      effect: CustomizableEffect(
          dotDecoration: DotDecoration(
              width: 8,
              height: 7,
              color: Colors.red,
              rotationAngle: 190,
              verticalOffset: 7,
              borderRadius: BorderRadius.circular(4),
              dotBorder: DotBorder.lerp(
                  DotBorder(color: Colors.green, type: DotBorderType.solid),
                  DotBorder.none,
                  2)),
          activeDotDecoration: DotDecoration(
              width: 4,
              height: 6,
              rotationAngle: 360,
              color: Colors.purple,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(0), right: Radius.elliptical(0, 0)))));
}

Widget buildImage(String gownimage, int index) => Container(
      // height: 800,
      margin: EdgeInsets.symmetric(horizontal: 12),

      // color: Color.fromARGB(255, 212, 30, 30),
      width: double.infinity,
      // width: 20000,
      // height: double.infinity,
      child: Image.asset(
        gownimage,
        fit: BoxFit.fill, height: 400,

        // width: 3000,
        filterQuality: FilterQuality.high,
      ),
    );
//  metgod for build indicator

