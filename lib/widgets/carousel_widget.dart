import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:task/constant.dart';

class CarouselWidget extends StatelessWidget {
  final List<dynamic> images;
  CarouselWidget({this.images});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200.0,
          child: Carousel(
            dotPosition: DotPosition.bottomLeft,
            dotSpacing: 12.0,
            dotSize: 8.0,
            dotBgColor: Colors.purple.withOpacity(0),
            indicatorBgPadding: 10.0,
            autoplay: true,
            dotColor: Colors.white.withOpacity(0.5),
            images: images,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                    size: kIconSize,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.white,
                    size: kIconSize,
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: kIconSize,
              ),
            ],
          ),
        )
      ],
    );
  }
}
