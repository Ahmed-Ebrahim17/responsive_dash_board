import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sizes_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegularWhite14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFAFAFA),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBoldWhite16(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBoldWhite24(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontFamily: "Montserrat",
      fontSize: getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w700,
    );
  }

  static double getResponsiveText(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveText = scaleFactor * fontSize;

    //! Add Limit
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;

    return responsiveText.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(context) {
    // ! الكود دا تقدر تستخدمه لو الحجم بتاع الشاشه ثابت يعني مبيتغيرش زي ال الويب هنا مش محتاج كونتيكست
    // var dispatcher = PlatformDispatcher.instance;

    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

    // var width = physicalWidth / devicePixelRatio;

    // ! هنا انا عايز الحجم يتغير زي الويب ف كدا هحتاج كونتكست هنا اقدر استخدم الكود دا بس هخلي الاستايل فانكشن عشان تاخد الكونتكست

    double width = MediaQuery.sizeOf(context).width;

    if (width < SizesConfig.mobile) {
      return width / 600;
    } else if (width > SizesConfig.tablet) {
      return width / 2050;
    } else {
      return width / 1100;
    }
  }
}
