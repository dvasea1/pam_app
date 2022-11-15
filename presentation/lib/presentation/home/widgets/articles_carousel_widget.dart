import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_2/presentation/home/controller/article_item.dart';
import 'package:test_2/presentation/home/widgets/article_widget.dart';
import 'package:test_2/presentation/home/widgets/page_indicator/page_indicator_controller.dart';
import 'package:test_2/presentation/home/widgets/page_indicator/page_indicator_widget.dart';

class ArticlesCarouselWidget extends StatefulWidget {
  const ArticlesCarouselWidget({super.key, required this.articles});

  final List<ArticleItem> articles;

  @override
  State<StatefulWidget> createState() {
    return ArticlesCarouselWidgetState();
  }
}

class ArticlesCarouselWidgetState extends State<ArticlesCarouselWidget> {
  @override
  void initState() {
    super.initState();
    Get.put(PageIndicatorController());
    PageIndicatorController controller = Get.find();
    controller.setItemsCount(widget.articles.length);
  }

  @override
  Widget build(BuildContext context) {
    PageIndicatorController controller = Get.find();
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                var item = widget.articles[index];
                return ArticleWidget(
                  articleTitle: item.title,
                  iconUrl: item.iconUrl,
                );
              },
              itemCount: widget.articles.length,
              onPageChanged: (index){
                controller.changePage(index);
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 20,
            child: PageIndicatorWidget(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
