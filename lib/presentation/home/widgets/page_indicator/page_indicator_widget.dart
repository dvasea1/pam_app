import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_2/presentation/home/widgets/page_indicator/page_indicator_controller.dart';
import 'package:test_2/resources/custom_colors.dart';

class PageIndicatorWidget extends StatelessWidget {
  final PageIndicatorController controller;

  const PageIndicatorWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _children(),
      );
    });
  }

  List<Widget> _children() {
    List<Widget> widgets = [];
    for (int i = 0; i < controller.itemsCount; i++) {
      widgets.add(
        SizedBox(
          width: 20,
          height: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: controller.selectedPosition.value == i ? 20 : 12,
                decoration: BoxDecoration(
                  color: CustomColor.salmon.withOpacity(controller.selectedPosition.value == i ? 1 : 0.5),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
    return widgets;
  }
}
