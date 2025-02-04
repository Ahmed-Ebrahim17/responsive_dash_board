// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../models/user_info_model.dart';
// import '../utils/app_styles.dart';

// class QuickInvasionItem extends StatelessWidget {
//   const QuickInvasionItem({
//     super.key,
//   });
//   final quickItemModel = [
//     UserInfoListTileModel
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Color(0xffFAFAFA),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SvgPicture.asset(quickItemModel.image),
//           SizedBox(
//             width: 12,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 quickItemModel.title,
//                 style: AppStyles.styleSemiBold16,
//               ),
//               SizedBox(
//                 height: 6,
//               ),
//               Text(
//                 quickItemModel.subTitle,
//                 style: AppStyles.styleRegular12,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
