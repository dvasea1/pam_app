import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_2/presentation/common/list_item.dart';

class ArticleItem extends ListItem {
  final String title;
  final SvgPicture icon;

  ArticleItem({required this.title, required this.icon});
}
