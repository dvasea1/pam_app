import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_2/presentation/home/controller/article_item.dart';
import 'package:test_2/presentation/home/controller/home_controller.dart';
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
  void initState() {
    Get.lazyPut(() => HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Obx(
          () => controller.user.value == null
              ? Container(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: [
                    HelloHomeWidget(fullName: controller.user.value!.userName),
                    ArticlesCarouselWidget(
                      articles: controller.articlesItems,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
