import 'package:flutter/material.dart';
import 'package:deanna__den_s_application2/core/utils/size_utils.dart';
import 'package:deanna__den_s_application2/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallLightgreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreenA700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
