import 'package:flutter/material.dart';

class FillViewportListView extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final ScrollPhysics scrollPhysics;

  const FillViewportListView({Key key, @required this.child, this.padding, this.scrollPhysics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          physics: scrollPhysics,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Padding(
              padding: padding ?? EdgeInsets.zero,
              child: IntrinsicHeight(
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
