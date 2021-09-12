import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zupay_task/styles/app_colors.dart';

enum FontType { BOLD, SEMI_BOLD, MEDIUM, REGULAR, LIGHT }

class AppTextStyles {
  static FontWeight fontType(FontType? fontType) {
    switch (fontType) {
      case FontType.BOLD:
        return FontWeight.w700;
      case FontType.SEMI_BOLD:
        return FontWeight.w600;
      case FontType.MEDIUM:
        return FontWeight.w500;
      case FontType.REGULAR:
        return FontWeight.w400;
      case FontType.LIGHT:
        return FontWeight.w300;
      default:
        return FontWeight.w400;
    }
  }

  static TextStyle textStyle({
    FontType? fontType,
    Color? color,
    double? size,
  }) {
    return TextStyle(
      color: color ?? AppColor.appBlack,
      fontSize: size,
      fontWeight: AppTextStyles.fontType(fontType),
    );
  }

  static TextStyle s0({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 8.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );
  static TextStyle s1({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 10.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );

  static TextStyle s2({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 12.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );

  static TextStyle s3({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 15.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );
  static TextStyle s4({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 16.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );

  static TextStyle s5({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 18.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );

  static TextStyle s6({Color? color, FontType? fontType}) =>
      AppTextStyles.textStyle(
        size: 22.sp,
        color: color ?? AppColor.appBlack,
        fontType: fontType,
      );

  static TextStyle disabledText = s4(
    color: Colors.grey,
    fontType: FontType.MEDIUM,
  );

  static final buttonText = s4(
    color: Colors.white,
    fontType: FontType.BOLD,
  );

  static final disabledButtonText = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );

  static final bigHeadingText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 28.sp,
  );

  static final headingText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 22.sp,
  );

  static final normalText = TextStyle(
    color: Colors.black,
    fontSize: 14.sp,
  );

  static final errorText = TextStyle(
    color: Colors.red[700],
    fontSize: 12.sp,
  );
}
