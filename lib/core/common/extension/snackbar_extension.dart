import 'package:flutter/material.dart';

import '../customui/text_widgets.dart';
import '../res/colors.dart';
import '../res/dimens.dart';
import '../res/strings.dart';

extension SnackbarExtension on BuildContext {
  void showSnackBar(String? message, {VoidCallback? onRetry}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.down,
          duration: onRetry != null
              ? const Duration(days: 1)
              : const Duration(milliseconds: 4000),
          behavior: SnackBarBehavior.floating,
          elevation: spacing_2x,
          margin: const EdgeInsets.symmetric(
            horizontal: spacing_6x,
            vertical: spacing_4x,
          ),
          action: onRetry != null
              ? SnackBarAction(
                  label: RETRY,
                  onPressed: onRetry,
                  textColor: COLOR_SECONDARY,
                )
              : null,
          content: SmallText(
            '$message',
            textColorInDark: TEXT_LIGHT_COLOR,
            textColorInLight: TEXT_LIGHT_COLOR,
          ),
        ),
      );
  }
}
