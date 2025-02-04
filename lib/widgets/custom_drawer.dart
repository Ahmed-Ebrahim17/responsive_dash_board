import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/info_list_tile_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTileWidget(
              userInfoListTileModel: UserInfoListTileModel(
                  image: AppAssets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListVIew(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20, // !Min height.
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: "Setting system",
                  image: AppAssets.imagesSetting2,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: "Logout account",
                  image: AppAssets.imagesLogout,
                )),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
