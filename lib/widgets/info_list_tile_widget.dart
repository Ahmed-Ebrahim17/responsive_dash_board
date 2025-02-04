import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/user_info_model.dart';
import '../utils/app_styles.dart';

class UserInfoListTileWidget extends StatelessWidget {
  const UserInfoListTileWidget({
    super.key,
    required this.userInfoListTileModel,
  });
  final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoListTileModel.image,
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoListTileModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoListTileModel.subTitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
