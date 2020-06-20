import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:task/services/network_helper.dart';
import 'package:task/screens/home.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://run.mocky.io/v3/3a1ec9ff-6a95-43cf-8be7-f5daa2122a34');
    var data = await networkHelper.fetchData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Home(fetchedData: data);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.red,
          size: 100.0,
        ),
      ),
    );
  }
}
