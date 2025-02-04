import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AppAssets.cardBackGround)),
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 32, top: 16, right: 42),
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(AppAssets.gallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
