import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class BounceWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;

  const BounceWidget({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      duration: const Duration(milliseconds: 100),
      onTap: onTap,
      child: child,
    );
  }
}
