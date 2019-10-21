import 'package:flutter/material.dart';

class SeparatedColumn extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder builder;
  final WidgetBuilder separatorBuilder;

  SeparatedColumn({
    @required this.itemCount,
    @required this.builder,
    @required this.separatorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(itemCount * 2 - 1, (int index) {
        bool isEven = index % 2 == 0;

        return isEven ? Expanded(child: builder(context, index ~/ 2)) : separatorBuilder(context);
      }),
    );
  }
}
