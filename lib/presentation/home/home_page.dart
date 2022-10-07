import 'package:flutter/material.dart';
import 'package:test_2/presentation/home/widgets/home_hello_widget.dart';

import 'widgets/news_carousel_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            HomeHelloWidget(userName: 'PAM USER'),
            NewsCarouselWidget(),
          ],
        ),
      ),
    );
  }
}
