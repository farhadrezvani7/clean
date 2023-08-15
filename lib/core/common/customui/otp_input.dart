import 'package:clean/core/common/extension/context_extension.dart';
import 'package:clean/core/common/res/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../res/colors.dart';
import '../res/dimens.dart';
import '../util/defaults.dart';

class OTPInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final int length;

  const OTPInput({
    required this.onChanged,
    this.length = Defaults.OTP_LENGTH,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final isDarkBrightness = context.isDarkBrightness;

    final borderColor = isDarkBrightness
        ? TEXT_FIELD_BORDER_DARK_COLOR
        : TEXT_FIELD_BORDER_LIGHT_COLOR;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: PinCodeTextField(
        appContext: context,
        backgroundColor: themeData.scaffoldBackgroundColor,
        length: length,
        onChanged: onChanged,
        animationType: AnimationType.fade,
        textStyle: TextStyles.bigBold,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        hintCharacter: '_',
        hintStyle: themeData.inputDecorationTheme.hintStyle,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        cursorColor: borderColor,
        pinTheme: PinTheme(
          fieldWidth: spacing_14x,
          fieldHeight: spacing_14x,
          borderWidth: DIVIDER_THICKNESS,
          activeFillColor: borderColor,
          inactiveFillColor: borderColor,
          selectedFillColor: borderColor,
          activeColor: borderColor,
          errorBorderColor: TEXT_ERROR_COLOR,
          shape: PinCodeFieldShape.circle,
          selectedColor: borderColor.withOpacity(0.5),
          inactiveColor: TEXT_FIELD_INACTIVE_COLOR.withOpacity(0.25),
        ),
      ),
    );
  }
}
