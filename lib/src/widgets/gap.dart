import 'package:flutter/widgets.dart';

import '../core/constants/size_constant.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.gap = SizeConstant.medium});

  final double gap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gap,
      height: gap,
    );
  }
}
