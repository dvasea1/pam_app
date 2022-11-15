import 'package:flutter/cupertino.dart';
import 'package:test_2/resources/custom_colors.dart';
import 'package:test_2/resources/strings.dart';
import 'package:test_2/resources/text_styles.dart';

class HelloHomeWidget extends StatelessWidget {
  const HelloHomeWidget({super.key, required this.fullName});

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Text(
            '${Strings.helloUser} $fullName',
            style: TextStyles.signikaRegular25.copyWith(color: CustomColor.deYork),
          ),
          Text(
            Strings.findTrackAndEat,
            style: TextStyles.signikaRegular18.copyWith(color: CustomColor.boulder),
          ),
        ],
      ),
    );
  }
}
