import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import '../utils/app_assets.dart';

class DrawerItemListVIew extends StatefulWidget {
  const DrawerItemListVIew({
    super.key,
  });

  @override
  State<DrawerItemListVIew> createState() => _DrawerItemListVIewState();
}

class _DrawerItemListVIewState extends State<DrawerItemListVIew> {
  final List<DrawerItemModel> _listItems = const [
    DrawerItemModel(
      image: AppAssets.imagesDashBoard,
      title: "Dashboard",
    ),
    DrawerItemModel(
      image: AppAssets.imagesTransction,
      title: "My Transaction",
    ),
    DrawerItemModel(
      image: AppAssets.imagesStaticts,
      title: "Statistics",
    ),
    DrawerItemModel(
      image: AppAssets.imagesWallet2,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: AppAssets.imagesChart2,
      title: "My Investments",
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: _listItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              isActive: activeIndex == index,
              drawerItemModel: _listItems[index],
            ),
          ),
        );
      },
    );
  }
}
