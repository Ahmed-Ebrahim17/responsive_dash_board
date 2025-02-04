import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/info_list_tile_widget.dart';

import '../models/user_info_model.dart';
import '../utils/app_assets.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  final items = const [
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar3,
        title: "Madrani Andi",
        subTitle: "Madraniadi20@gmail"),
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar2,
        title: "Josua Nunito",
        subTitle: "Josh Nunito@gmail.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items.map(
        (e) {
          return IntrinsicWidth(
              child: UserInfoListTileWidget(userInfoListTileModel: e));
        },
      ).toList()),
    );
    // return SizedBox(
    //   height: 800,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTileWidget(
    //             userInfoListTileModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}
