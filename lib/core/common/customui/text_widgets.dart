import 'package:clean/core/common/extension/context_extension.dart';
import 'package:clean/core/common/res/colors.dart';
import 'package:clean/core/common/res/text_styles.dart';
import 'package:flutter/material.dart';

abstract class BaseTextWidget extends StatelessWidget {
  final String data;
  final Color? textColorInDark;
  final Color? textColorInLight;

  const BaseTextWidget(
    this.data, {
    this.textColorInDark,
    this.textColorInLight,
    super.key,
  });

  Color getTextColor(BuildContext context) {
    return context.isDarkBrightness
        ? textColorInDark ?? TEXT_LIGHT_COLOR
        : textColorInLight ?? TEXT_DARK_COLOR;
  }

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}

//VERY SMALL
class VerySmallText extends BaseTextWidget {
  const VerySmallText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.verySmall.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class VerySmallBoldText extends BaseTextWidget {
  const VerySmallBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.verySmallBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//SMALL
class SmallText extends BaseTextWidget {
  const SmallText(
    super.data, {
    super.key,
    super.textColorInDark,
    super.textColorInLight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.small.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class SmallBoldText extends BaseTextWidget {
  const SmallBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.smallBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//NORMAL
class NormalText extends BaseTextWidget {
  const NormalText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.normal.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class NormalBoldText extends BaseTextWidget {
  const NormalBoldText(
    super.data, {
    super.key,
    super.textColorInDark,
    super.textColorInLight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.normalBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//LARGE
class LargeText extends BaseTextWidget {
  const LargeText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.large.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class LargeBoldText extends BaseTextWidget {
  const LargeBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.largeBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//BIG
class BigText extends BaseTextWidget {
  const BigText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.big.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class BigBoldText extends BaseTextWidget {
  const BigBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.bigBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//HUGE
class HugeText extends BaseTextWidget {
  const HugeText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.huge.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class HugeBoldText extends BaseTextWidget {
  const HugeBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.hugeBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

//VERY HUGE
class VeryHugeText extends BaseTextWidget {
  const VeryHugeText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.veryHuge.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}

class VeryHugeBoldText extends BaseTextWidget {
  const VeryHugeBoldText(
    super.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyles.veryHugeBold.copyWith(
        color: getTextColor(context),
      ),
    );
  }
}
