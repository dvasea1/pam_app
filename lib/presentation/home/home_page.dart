import 'package:flutter/material.dart';
import 'package:test_2/presentation/home/controller/article_item.dart';
import 'package:test_2/presentation/home/widgets/articles_carousel_widget.dart';
import 'package:test_2/presentation/home/widgets/hello_home_widget.dart';
import 'package:test_2/resources/svg_assets.dart';

import '../../resources/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            HelloHomeWidget(fullName: 'PAM USEAR'),
            ArticlesCarouselWidget(
              articles: [
                ArticleItem(title: Strings.theProAndConsFastFood, icon: SvgAssets.cake),
                ArticleItem(title: Strings.theProAndConsFastFood, icon: SvgAssets.cake),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
