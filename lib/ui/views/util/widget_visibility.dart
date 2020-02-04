import 'package:flutter/material.dart';

enum WidgetVisibilityFlag {
  visible,
  invisible,
  offscreen,
  gone,
}

class WidgetVisibility extends StatelessWidget {
  final WidgetVisibilityFlag visibility;
  final Widget child;
  final Widget removedChild;

  WidgetVisibility({
    @required this.child,
    @required this.visibility,
  }) : this.removedChild = Container();

  @override
  Widget build(BuildContext context) {
    if (visibility == WidgetVisibilityFlag.visible) {
      return child;
    } else if (visibility == WidgetVisibilityFlag.invisible) {
      return IgnorePointer(
        ignoring: true,
        child: Opacity(
          opacity: 0.0,
          child: child,
        ),
      );
    } else if (visibility == WidgetVisibilityFlag.offscreen) {
      return Offstage(
        offstage: true,
        child: child,
      );
    } else {
      // If gone, we replace child with a custom widget (defaulting to a
      // [Container] with no defined size).
      return removedChild;
    }
  }
}
