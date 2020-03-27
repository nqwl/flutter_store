import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:girl/apis/app_apis.dart';
import '../config/index.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(KString.homeTitle),
      ),
      backgroundColor: KColor.backgroudColor,
      body: FutureBuilder(
          future: AppApi().getHomeData('1', context, false),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.encode(snapshot.data.toString());
              return Container(
                child: Text('数据加载成功...'),
              );
            } else {
              return Container(
                child: Text('加载中...'),
              );
            }
          }),
    );
  }
}
