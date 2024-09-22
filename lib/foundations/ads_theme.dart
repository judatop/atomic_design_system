import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class ADSTheme {
  ADSTheme._();

  static const lightBodyMedium = TextStyle(
    fontFamily: ADSFoundationsTypography.fontFamily,
    fontSize: ADSFoundationsTypography.fontSizeBodyText,
    fontWeight: FontWeight.w400,
    color: ADSFoundationsColors.bodyTextLight,
  );

  static const lightTitleMedium = TextStyle(
    fontFamily: ADSFoundationsTypography.fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: ADSFoundationsTypography.fontSizeSubtitle,
    color: ADSFoundationsColors.subtitleTextLight,
  );

  static const lightHeadlineMedium = TextStyle(
    fontFamily: ADSFoundationsTypography.fontFamily,
    fontWeight: FontWeight.w900,
    fontSize: ADSFoundationsTypography.fontSizeTitle,
    color: ADSFoundationsColors.titleTextLight,
  );

  static const double borderWidth = 1;

  static final inputDecoration = InputDecorationTheme(
    hintStyle: lightBodyMedium.copyWith(
      color: ADSFoundationsColors.disabledBackground,
    ),
    errorStyle:
        lightBodyMedium.copyWith(color: ADSFoundationsColors.errorBackground),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.bodyTextLight,
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.primaryColor,
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.errorBackground,
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.errorBackground,
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.primaryColor,
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    filled: false,
    fillColor: ADSFoundationsColors.backgroundLight,
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: ADSFoundationsColors.primaryColor,
      onPrimary: ADSFoundationsColors.bodyTextDark,
      secondary: ADSFoundationsColors.primaryColor,
      onSecondary: ADSFoundationsColors.bodyTextDark,
      error: ADSFoundationsColors.errorBackground,
      onError: ADSFoundationsColors.whiteColor,
      background: ADSFoundationsColors.backgroundLight,
      onBackground: ADSFoundationsColors.bodyTextLight,
      surface: ADSFoundationsColors.backgroundLight,
      surfaceTint: ADSFoundationsColors.bodyTextLight,
      onSurface: ADSFoundationsColors.blackColor,
    ),
    textTheme: const TextTheme(
      headlineMedium: lightHeadlineMedium,
      titleMedium: lightTitleMedium,
      bodyMedium: lightBodyMedium,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color?>(
          ADSFoundationsColors.primaryColor,
        ),
        textStyle: MaterialStateProperty.all<TextStyle?>(
          lightBodyMedium,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(
          ADSFoundationsColors.whiteColor,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return const BorderSide(
              color: ADSFoundationsColors.primaryColor,
              width: 1.0,
            );
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color?>(
          ADSFoundationsColors.primaryColor,
        ),
        textStyle: MaterialStateProperty.all<TextStyle?>(
          lightBodyMedium,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextLight,
        ),
        textStyle: MaterialStateProperty.all<TextStyle?>(
          lightBodyMedium,
        ),
      ),
    ),
    inputDecorationTheme: inputDecoration,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ADSFoundationsColors.backgroundLight,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: lightBodyMedium,
      inputDecorationTheme: inputDecoration,
    ),
    iconTheme: const IconThemeData(color: ADSFoundationsColors.blackColor),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: MaterialStateTextStyle.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return lightBodyMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: ADSFoundationsColors.blackColor,
          );
        }
        return lightBodyMedium.copyWith(
          color: ADSFoundationsColors.blackColor,
          fontSize: 13,
        );
      }),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: ADSFoundationsColors.backgroundLight,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          style: BorderStyle.solid,
          width: borderWidth,
          color: ADSFoundationsColors.bodyTextLight,
        ),
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(
      fillColor: MaterialStatePropertyAll(
        ADSFoundationsColors.backgroundLight,
      ),
      side: BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.bodyTextLight,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      checkColor: MaterialStatePropertyAll(ADSFoundationsColors.primaryColor),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return const BorderSide(
              color: ADSFoundationsColors.primaryColor,
              width: 1.0,
            );
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle?>(
          lightBodyMedium,
        ),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: lightBodyMedium,
      unselectedLabelStyle: lightBodyMedium,
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
      labelTextStyle: MaterialStateProperty.all<TextStyle?>(
        lightBodyMedium,
      ),
      iconColor: ADSFoundationsColors.primaryColor,
      iconSize: ADSFoundationSizes.radiusFormItem,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return ADSFoundationsColors.primaryColor.withOpacity(.32);
          }

          if (states.contains(MaterialState.selected)) {
            return ADSFoundationsColors.primaryColor;
          }

          return ADSFoundationsColors.bodyTextLight;
        },
      ),
    ),
  );
}
