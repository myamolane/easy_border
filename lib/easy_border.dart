library easy_border;

import 'package:flutter/widgets.dart';

class Bordered extends StatelessWidget {
  final Widget child;
  final double width;
  final Color color;
  final Gradient gradient;
  final BorderRadius borderRadius;

  const Bordered({Key key, this.child, this.width = 1, this.color, this.gradient, this.borderRadius,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: width,
            decoration: BoxDecoration(
              gradient: gradient,
              color: gradient == null ? color : null,
              borderRadius: borderRadius,
            ),
          ),
        )
      ],
    );
  }
}
