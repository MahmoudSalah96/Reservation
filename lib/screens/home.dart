import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/services/change_date_format.dart';
import 'package:task/constant.dart';
import 'package:task/widgets/carousel_widget.dart';
import 'package:task/widgets/icon_label_widget.dart';
import 'package:task/widgets/line_divider_widget.dart';
import 'package:task/model/item_model.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  Home({this.fetchedData});
  final fetchedData;
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic> item = {};
  String formatedDate;
  @override
  void initState() {
    super.initState();
    updateUI();
  }

  void updateUI() {
    if (widget.fetchedData != null) {
      ItemModel itemModel = ItemModel.fromJson(widget.fetchedData);
      item = itemModel.toMap();
      ChangeDageFormat changeDageFormat = ChangeDageFormat(item['date']);
      formatedDate = changeDageFormat.getTime();
    } else {
      return;
    }
  }

  List<dynamic> getImage(List<dynamic> images) {
    List<dynamic> i = [];
    for (var img in images) {
      i.add(Image.network(
        img,
        fit: BoxFit.cover,
      ));
    }
    return i;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            CarouselWidget(
              images: getImage(item['image']),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '#' + item['title'],
                          style: kTextStyle,
                        ),
                        Text(
                          item['interest'],
                          style: kTitelTextStyle,
                        ),
                        IconRowWidget(
                          textLabel: formatedDate,
                          iconLabel: FontAwesomeIcons.calendarAlt,
                        ),
                        IconRowWidget(
                          textLabel: item['address'],
                          iconLabel: FontAwesomeIcons.locationArrow,
                        ),
                      ],
                    ),
                  ),
                  LineDividerWidget(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            CircleAvatar(
                              maxRadius: 20.0,
                              child: Image.network(item['trainerImage']) ??
                                  Image.asset('1.jpg'),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              item['trainerName'],
                              style: kTitelTextStyle,
                            ),
                          ],
                        ),
                        Text(
                          item['trainerInfo'],
                          style: kTextStyle,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  LineDividerWidget(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'تفاصيل الرحله',
                          style: kTitelTextStyle,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          item['occasionDetail'],
                          style: kTextStyle,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  LineDividerWidget(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'تكلفة الرحله',
                          style: kTitelTextStyle,
                          textDirection: TextDirection.rtl,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              item['reservTypes'][0]['name'],
                              style: kTextStyle,
                            ),
                            Text(
                              'SAR ' +
                                  item['reservTypes'][0]['price'].toString(),
                              style: kTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'قم بالحجز الآن',
                  style: kButtonTextStyle,
                ),
              ),
              color: Color(0xFF763287),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 55.0,
            ),
          ],
        ),
      ),
    );
  }
}
