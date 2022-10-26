import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/resources/custom_colors.dart';
import 'package:test_2/resources/svg_assets.dart';
import 'package:test_2/resources/text_styles.dart';

import '../../../resources/strings.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.articleTitle, required this.iconUrl});

  final String articleTitle;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28),
      height: 160,
      decoration: BoxDecoration(
        color: CustomColor.serenade,
        borderRadius: const BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.article.toUpperCase(),
                    style: TextStyles.signikaSemibold10.copyWith(color: CustomColor.salmon),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    articleTitle,
                    style: TextStyles.signikaSemibold17.copyWith(color: CustomColor.tempTress),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          decoration: BoxDecoration(
                            color: CustomColor.salmon,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          height: 32,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Strings.readNow,
                                style: TextStyles.signikaSemibold12.copyWith(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              SvgAssets.arrowRight()
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(height: 160,child: Image(
              image: NetworkImage(iconUrl),
            ),),
          ),
        ],
      ),
    );
  }
}
