import 'package:flutter/material.dart';

import 'package:safe_drive/core/utils/size_utils.dart';
import 'package:safe_drive/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );

  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );
  // Title text style
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );

  static get titleSmallGray900Medium => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray900,
    fontWeight: FontWeight.w500,
  );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
