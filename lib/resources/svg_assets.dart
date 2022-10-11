import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class SvgAssets {
  static SvgPicture cake = SvgPicture.asset('resources/svg/cake.svg');

  static SvgPicture arrowRight({Color? color}) => SvgPicture.asset(
        'resources/svg/arrow_right.svg',
        color: color,
      );
}
