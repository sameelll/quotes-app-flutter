import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/quotes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      color: Colors.red,
      width: width,
      height: height,
      child: CarouselSlider.builder(
        itemCount: quotesList.length,
        itemBuilder: (context, index1, index2) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(quotesList[index1][kQuote]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(quotesList[index1][kAuthor]),
            ],
          );
        },
        options: CarouselOptions(
            scrollDirection: Axis.vertical,
            pageSnapping: true,
            initialPage: 0,
            enlargeCenterPage: true),
      ),
    ));
  }
}
