import 'package:flutter/material.dart';
import 'package:toonflix/model/webtoon_model.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 2, //앱바의 음영
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
          title: const Text(
            "오늘의 웹툰",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        body: const Text('123'));
  }
}
