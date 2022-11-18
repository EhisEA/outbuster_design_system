import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.height = 10, this.width = 10});

  ///assign [gap] to [height] and [width]
  const Gap.both(double gap, {super.key})
      : height = gap,
        width = gap;

  ///assign 0 (zero) to [height] and [width]
  const Gap.shrink({super.key})
      : height = 0,
        width = 0;

  final double height;
  final double width;

  static Gap get s4 => const Gap.both(4);
  static Gap get s6 => const Gap.both(6);
  static Gap get s8 => const Gap.both(8);
  static Gap get s10 => const Gap.both(10);
  static Gap get s12 => const Gap.both(12);
  static Gap get s14 => const Gap.both(14);
  static Gap get s16 => const Gap.both(16);
  static Gap get s18 => const Gap.both(18);
  static Gap get s20 => const Gap.both(20);
  static Gap get s22 => const Gap.both(22);
  static Gap get s24 => const Gap.both(24);
  static Gap get s26 => const Gap.both(26);
  static Gap get s28 => const Gap.both(28);
  static Gap get s30 => const Gap.both(30);
  static Gap get s32 => const Gap.both(32);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
