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

  static final darkBodyMedium = lightBodyMedium.copyWith(
    color: ADSFoundationsColors.bodyTextDark,
  );

  static final darkTitleMedium = lightTitleMedium.copyWith(
    color: ADSFoundationsColors.subtitleTextDark,
  );

  static final darkHeadlineMedium = lightHeadlineMedium.copyWith(
    color: ADSFoundationsColors.titleTextDark,
  );

  static const double borderWidth = 1;

  static final inputDecoration = InputDecorationTheme(
    hintStyle: lightBodyMedium.copyWith(
      color: Colors.grey.withOpacity(.5),
    ),
    errorStyle: lightBodyMedium.copyWith(
      color: ADSFoundationsColors.errorBackground,
      fontSize: ADSFoundationsTypography.fontSizeLabel,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: Colors.grey.withOpacity(.2),
      ),
      borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: Colors.grey.withOpacity(.2),
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
      surface: ADSFoundationsColors.backgroundLight,
      surfaceTint: ADSFoundationsColors.bodyTextLight,
      onSurface: ADSFoundationsColors.blackColor,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: ADSFoundationsColors.whiteColor,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          style: BorderStyle.solid,
          width: 0.5,
          color: ADSFoundationsColors.bodyTextLight,
        ),
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: lightHeadlineMedium,
      titleMedium: lightTitleMedium,
      bodyMedium: lightBodyMedium,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.primaryColor,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        overlayColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.backgroundLight.withOpacity(.5),
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.backgroundLight,
        ),
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextLight,
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return BorderSide(
              color: Colors.grey.withOpacity(.2),
              width: 1.5,
            );
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return BorderSide(
              color: Colors.grey.withOpacity(.2),
              width: 1.5,
            );
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextLight,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextLight,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          lightBodyMedium,
        ),
      ),
    ),
    inputDecorationTheme: inputDecoration.copyWith(
      prefixIconColor: ADSFoundationsColors.bodyTextLight,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ADSFoundationsColors.backgroundLight,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: lightBodyMedium,
      inputDecorationTheme: inputDecoration,
    ),
    iconTheme: const IconThemeData(color: ADSFoundationsColors.blackColor),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
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
      fillColor: WidgetStatePropertyAll(
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
      checkColor: WidgetStatePropertyAll(ADSFoundationsColors.primaryColor),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
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
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
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
      labelTextStyle: WidgetStateProperty.all<TextStyle?>(
        lightBodyMedium,
      ),
      iconColor: ADSFoundationsColors.primaryColor,
      iconSize: ADSFoundationSizes.radiusFormItem,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ADSFoundationsColors.primaryColor.withOpacity(.32);
          }

          if (states.contains(WidgetState.selected)) {
            return ADSFoundationsColors.primaryColor;
          }

          return ADSFoundationsColors.bodyTextLight;
        },
      ),
    ),
    dividerTheme: DividerThemeData(
      color: Colors.grey.withOpacity(.25),
      thickness: 1,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ADSFoundationsColors.primaryColor,
      onPrimary: ADSFoundationsColors.bodyTextDark,
      secondary: ADSFoundationsColors.primaryColor,
      onSecondary: ADSFoundationsColors.bodyTextDark,
      error: ADSFoundationsColors.errorBackground,
      onError: ADSFoundationsColors.whiteColor,
      surface: ADSFoundationsColors.backgroundDark,
      surfaceTint: ADSFoundationsColors.bodyTextDark,
      onSurface: ADSFoundationsColors.whiteColor,
    ),
    dialogTheme: DialogTheme(
      backgroundColor: ADSFoundationsColors.blackColor,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          style: BorderStyle.solid,
          width: 0.5,
          color: ADSFoundationsColors.bodyTextDark,
        ),
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
    ),
    textTheme: TextTheme(
      headlineMedium: darkHeadlineMedium,
      titleMedium: darkTitleMedium,
      bodyMedium: darkBodyMedium,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.primaryColor,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium.copyWith(fontWeight: FontWeight.w700),
        ),
        overlayColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.backgroundDark.withOpacity(.5),
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.backgroundDark,
        ),
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextDark,
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return BorderSide(
              color: Colors.grey.withOpacity(.2),
              width: 1.5,
            );
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        overlayColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextDark.withOpacity(.2),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return BorderSide(
                color: ADSFoundationsColors.disabledBackground,
                width: 2.0,
              );
            }
            return BorderSide(
              color: ADSFoundationsColors.greyColor.withOpacity(.2),
              width: 1.5,
            );
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextDark,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium.copyWith(fontWeight: FontWeight.w700),
        ),
        overlayColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextDark.withOpacity(.2),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color?>(
          ADSFoundationsColors.bodyTextDark,
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium,
        ),
      ),
    ),
    inputDecorationTheme: inputDecoration.copyWith(
      prefixIconColor: ADSFoundationsColors.bodyTextDark,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ADSFoundationsColors.backgroundDark,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: darkBodyMedium,
      inputDecorationTheme: inputDecoration,
    ),
    iconTheme: const IconThemeData(color: ADSFoundationsColors.whiteColor),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return darkBodyMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: ADSFoundationsColors.whiteColor,
          );
        }
        return darkBodyMedium.copyWith(
          color: ADSFoundationsColors.whiteColor,
          fontSize: 13,
        );
      }),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: ADSFoundationsColors.backgroundDark,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          style: BorderStyle.solid,
          width: borderWidth,
          color: ADSFoundationsColors.bodyTextDark,
        ),
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(
      fillColor: WidgetStatePropertyAll(
        ADSFoundationsColors.backgroundDark,
      ),
      side: BorderSide(
        style: BorderStyle.solid,
        width: borderWidth,
        color: ADSFoundationsColors.bodyTextDark,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      checkColor: WidgetStatePropertyAll(ADSFoundationsColors.primaryColor),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith<BorderSide>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
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
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        textStyle: WidgetStateProperty.all<TextStyle?>(
          darkBodyMedium,
        ),
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: darkBodyMedium,
      unselectedLabelStyle: darkBodyMedium,
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
      ),
      labelTextStyle: WidgetStateProperty.all<TextStyle?>(
        darkBodyMedium,
      ),
      iconColor: ADSFoundationsColors.primaryColor,
      iconSize: ADSFoundationSizes.radiusFormItem,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return ADSFoundationsColors.primaryColor.withOpacity(.32);
          }

          if (states.contains(WidgetState.selected)) {
            return ADSFoundationsColors.primaryColor;
          }

          return ADSFoundationsColors.bodyTextDark;
        },
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ADSFoundationsColors.greyColor.withOpacity(.2),
      thickness: 1,
    ),
  );
}
