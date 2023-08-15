import 'package:clean/core/common/customui/text_widgets.dart';
import 'package:clean/core/common/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/dimens.dart';
import '../util/border_radius.dart';
import 'bounce_widget.dart';
import 'loading_widget.dart';

class ProgressButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isEnabled;
  final bool isLoading;

  const ProgressButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.isEnabled = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = BUTTON_BACKGROUND_DISABLED_COLOR;
    if (isLoading) {
      buttonColor = BUTTON_BACKGROUND_DISABLED_COLOR;
    } else if (isEnabled) {
      buttonColor = BUTTON_BACKGROUND_COLOR;
    } else {
      buttonColor = BUTTON_BACKGROUND_DISABLED_COLOR;
    }

    return BounceWidget(
      onTap: (isEnabled && !isLoading) ? onTap : null,
      child: Container(
        width: context.screenWidth,
        height: BUTTON_HEIGHT,
        margin: const EdgeInsets.only(
          left: spacing_6x,
          right: spacing_6x,
          bottom: spacing_4x,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: defaultBorderRadiusSmall,
          color: buttonColor,
        ),
        child: isLoading
            ? const LoadingWidget()
            : NormalBoldText(
                label,
                textColorInLight: TEXT_LIGHT_COLOR,
                textColorInDark: TEXT_LIGHT_COLOR,
              ),
      ),
    );
  }
}
