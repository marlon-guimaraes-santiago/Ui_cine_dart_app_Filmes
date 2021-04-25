import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategoriasSlider extends StatelessWidget {
  List bannerAdSlider = [
  "assets/Godzilla.jpg",
  "assets/hunter.jpg",
  "assets/inter.png",
  "assets/lacasa.jpg",
  "assets/liga.jpg",
  "assets/mulan.jpg",
  "assets/mulher.png",
  "assets/troco.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        autoPlay: true,
      ),
      items: bannerAdSlider.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  image: AssetImage(i),
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
