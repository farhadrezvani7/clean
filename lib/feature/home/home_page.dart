import 'package:auto_route/auto_route.dart';
import 'package:clean/core/common/customui/spacing_widgets.dart';
import 'package:clean/core/common/customui/text_widgets.dart';
import 'package:clean/core/common/res/dimens.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(
              'data',
            ),
            VerticalSpace(spacing_6x),
            VeryHugeBoldText('datasdfsdfsdfsfsd'),
          ],
        ),
      ),
    );
  }
}
