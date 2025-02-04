import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_assets.dart';

class TopExpensesCardItem extends StatelessWidget {
  const TopExpensesCardItem({
    super.key,
    required this.image,
    this.backGroundColor,
    this.colorImage,
  });
  final Color? backGroundColor, colorImage;

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backGroundColor ?? Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        colorImage ?? Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        SvgPicture.asset(
          AppAssets.imagesArrowRight,
          height: 24,
          width: 24,
          colorFilter: ColorFilter.mode(
              colorImage ?? Color(0xff064061), BlendMode.srcIn),
        ),
      ],
    );
  }
}
