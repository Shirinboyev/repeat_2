import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/phone.png'),
              fit: BoxFit.cover),),
          child: Center(
            child: CarouselSlider(
            slideTransform: CubeTransform(),
             unlimitedMode: true,
             enableAutoSlider: true,
             autoSliderTransitionTime: const Duration(seconds: 2),
              children: [
              Container(color: Colors.red,child: Column(
                children: [
                  
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.all(Radius.circular(50)),)
              ),
           ),
                ],
              ),),
              
              Image.asset('image/1.png'),
              Image.asset('image/2.png'),
              Image.asset('image/3.png'),
              Image.asset('image/4.png'),
              Image.asset('image/5.png'),
              Image.asset('image/6.png'),
              Image.asset('image/7.png'),
              Image.asset('image/8.png'),
              Image.asset('image/9.png'),
              Image.asset('image/10.png'),
              Image.asset('image/11.png'),
              Image.asset('image/12.png'),
              Image.asset('image/13.png'),
              Image.asset('image/14.png'),
           
            ]),
          ),
        ),
      ),
    );
  }
}
void main(){
  runApp(MyApp());
}