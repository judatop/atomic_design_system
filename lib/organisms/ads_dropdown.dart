import 'package:atomic_design_system/foundations/ads_foundation_sizes.dart';
import 'package:atomic_design_system/foundations/ads_foundations_colors.dart';
import 'package:atomic_design_system/foundations/ads_theme.dart';
import 'package:flutter/material.dart';

class AdsDropdown extends StatelessWidget {
  final String? hintText;
  final TextStyle? textStyle;
  final IconData? suffixIcon;
  final double? suffixIconSize;
  final Color? suffixIconColor;
  final String? errorText;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final void Function()? onTapCallback;
  final Key? dropdownKey;
  final TextEditingController? controller;

  const AdsDropdown({
    super.key,
    this.hintText,
    this.textStyle,
    this.suffixIcon,
    this.suffixIconSize,
    this.suffixIconColor,
    this.errorText,
    this.focusNode,
    this.textAlign,
    this.onTapCallback,
    this.dropdownKey,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;

    return GestureDetector(
      onTap: onTapCallback,
      child: TextField(
        controller: controller,
        key: dropdownKey,
        style: textStyle ??
            textTheme.bodyMedium?.copyWith(
              color: brightness == Brightness.light
                  ? ADSFoundationsColors.blackColor
                  : ADSFoundationsColors.whiteColor,
            ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: suffixIconColor ?? Colors.grey,
                  size: suffixIconSize ?? ADSFoundationSizes.sizeIconMedium,
                )
              : null,
          errorText: errorText,
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: ADSTheme.borderWidth,
              color: Colors.grey.withOpacity(.2),
            ),
            borderRadius:
                BorderRadius.circular(ADSFoundationSizes.radiusFormItem),
          ),
        ),
        focusNode: focusNode,
        textAlign: textAlign ?? TextAlign.start,
        enabled: false,
      ),
    );
  }
}

void showAdsDropdownBottomSheet(
  BuildContext context,
  List<Object> items,
  void Function(Object selectedItem) onSelect,
  bool searchable,
  String? chooseLabelOption,
) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  final fewItems = items.length <= 5;

  showModalBottomSheet(
    context: context,
    isScrollControlled: !fewItems,
    useSafeArea: true,
    constraints: fewItems
        ? BoxConstraints.expand(width: screenWidth, height: screenWidth)
        : null,
    backgroundColor: Theme.of(context).colorScheme.background,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.04,
              bottom: screenHeight * 0.02,
              right: screenWidth * 0.05,
              left: screenWidth * 0.05,
            ),
            child: Text(
              chooseLabelOption ?? '',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(screenWidth * 0.02),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    onSelect(item);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Text(
                      item.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: ADSFoundationsColors.bodyTextLight,
                thickness: 0.5,
              ),
            ),
          ),
        ],
      );
    },
  );
}
