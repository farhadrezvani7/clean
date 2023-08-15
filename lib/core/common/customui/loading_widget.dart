import 'package:clean/core/common/res/colors.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  final Color? color;

  const LoadingWidget({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: color ?? COLOR_PRIMARY,
      ),
    );
  }
}
