import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Carousel_Img extends StatefulWidget {
  const Carousel_Img({super.key});

  @override
  State<Carousel_Img> createState() => _Carousel_ImgState();
}

class _Carousel_ImgState extends State<Carousel_Img> {
     final slideimg =[
      Image.asset('assets/slideimg1.jpg'),
      Image.asset('assets/slideimg2.jpg'),
      Image.asset('assets/slideimg3.jpg'),
     ];
  int currentindex =0;
  Color customGreen = Color.fromRGBO(133, 190, 73, 1.0);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       CarouselSlider(
        items:slideimg.toList(), 
        options: CarouselOptions(
          autoPlay: true,
          height:200,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {
            setState(() { 
              currentindex = index;
            });
          },
        ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentindex,
          count: slideimg.length,
          effect: ExpandingDotsEffect(
            activeDotColor:customGreen,
            dotColor: customGreen,
            dotWidth: 10.0,
            dotHeight: 10.0,
          ),)
          ]
    );
  }
}