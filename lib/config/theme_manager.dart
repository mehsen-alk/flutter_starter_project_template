import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.backgroundColor,
    // app bar theme
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light),
      centerTitle: true,
      elevation: AppSize.s0,
      titleTextStyle: getAlmaraiRegularStyle(
          fontSize: AppSize.s18.sp, color: ColorManager.white),
    ),
    // input decoration theme (text form field)
    errorColor: ColorManager.error,
    inputDecorationTheme: InputDecorationTheme(
      // hint style
      hintStyle: getAlmaraiBoldStyle(
          color: ColorManager.darkPrimary, fontSize: AppSize.s16.sp),
      labelStyle: getAlmaraiRegularStyle(
          color: ColorManager.darkPrimary, fontSize: AppSize.s16.sp),
      errorStyle: getAlmaraiRegularStyle(
          color: ColorManager.error, fontSize: AppSize.s16.sp),

      // enabled border style
      enabledBorder: InputBorder.none,
      // focused border style
      focusedBorder: InputBorder.none,
      // error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1.w),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s20.r),
        ),
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1.w),
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.s20.r),
        ),
      ),
    ),
    // icon theme
    iconTheme: IconThemeData(color: ColorManager.white, size: AppSize.s25.sp),
    // text button
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorManager.grey;
            } else {
              return ColorManager.primary;
            }
          },
        ),
        textStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return getAlmaraiRegularStyle(
                color: ColorManager.grey, fontSize: AppSize.s18.sp);
          } else {
            return getAlmaraiRegularStyle(
                color: ColorManager.primary, fontSize: AppSize.s18.sp);
          }
        }),
      ),
    ),
    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorManager.white;
          } else {
            return ColorManager.primary;
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorManager.primary;
          } else {
            return ColorManager.white;
          }
        }),
        shadowColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorManager.white;
          } else {
            return ColorManager.primary;
          }
        }),
        elevation: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppSize.s0;
          } else {
            return AppSize.s6.h;
          }
        }),
        side: MaterialStateProperty.resolveWith(
                (states) => const BorderSide(color: ColorManager.primary)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
        ),
      ),
    ),
    // outline button
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorManager.primary;
            } else {
              return ColorManager.white;
            }
          }),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorManager.white;
            } else {
              return ColorManager.primary;
            }
          }),
          side: MaterialStateProperty.resolveWith(
                  (states) => const BorderSide(color: ColorManager.primary)),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return AppSize.s0;
            } else {
              return AppSize.s6.h;
            }
          }),
          shadowColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorManager.white;
            } else {
              return ColorManager.primary;
            }
          }),
          shape: MaterialStateProperty.resolveWith((states) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s18));
          })),
    ),
  );
}