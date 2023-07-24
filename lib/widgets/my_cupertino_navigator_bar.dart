
import 'package:flutter/cupertino.dart';

class MyCupertinoNavigatorBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  const MyCupertinoNavigatorBar({
    Key? key,
    required this.middle,
    this.preferredSize = const Size.fromHeight(54.0),
    this.leading,
    this.trailing,
  }) : super(key: key);
  final Widget? leading;
  final Widget? trailing;
  final Widget middle;
  @override
  final Size preferredSize;

  // Переопределение методов ObstructingPreferredSizeWidget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: CupertinoNavigationBar(
        backgroundColor: CupertinoTheme.of(context).scaffoldBackgroundColor,
        border: null,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        middle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: DefaultTextStyle(
            style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            child: middle,
          ),
        ),
        trailing: trailing,
      ),
    );
  }

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return false; // Верните true, если нужно полностью обструктировать размеры и расположение.
  }
}