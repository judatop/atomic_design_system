import 'package:atomic_design_system/atomic_design_system.dart';
import 'package:flutter/material.dart';

class ADSFoundationsColors {
  ADSFoundationsColors._();

  static const Color primaryColor = ADSColors.color;

  static const Color backgroundLight = ADSColors.bgLight;
  static const Color titleTextLight = ADSColors.textLight;
  static const Color subtitleTextLight = ADSColors.textLight;
  static const Color bodyTextLight = ADSColors.textLight;

  static const Color backgroundDark = ADSColors.bgDark;
  static const Color titleTextDark = ADSColors.textDark;
  static const Color subtitleTextDark = ADSColors.textDark;
  static const Color bodyTextDark = ADSColors.textDark;

  static const Color warningBackground = ADSColors.statusWarning;
  static const Color successBackground = ADSColors.statusSuccess;
  static const Color errorBackground = ADSColors.statusDanger;
  static Color disabledBackground = ADSColors.bgGrey.withOpacity(0.8);
  static const Color whiteColor = ADSColors.bgWhite;
  static const Color blackColor = ADSColors.bgBlack;
  static const Color greyColor = ADSColors.bgGrey;
}
