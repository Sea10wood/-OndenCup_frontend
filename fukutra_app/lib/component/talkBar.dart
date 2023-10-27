import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  Bubble({Key? key, required this.text, required this.textStyle})
      : super(key: key);

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 32, top: 8, right: 32, bottom: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Color(0x80000000),
            offset: Offset(0, 2),
            blurRadius: 1,
          ),
        ],
        shape: BubbleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

class BubbleBorder extends ShapeBorder {
  final bool usePadding;
  final double borderWidth;
  final Color borderColor;

  const BubbleBorder(
      {this.usePadding = true,
      this.borderWidth = 3.0,
      this.borderColor = Colors.yellow});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(borderWidth);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(rect.bottomCenter.dx, rect.bottomCenter.dy)
      ..relativeLineTo(9, 16)
      ..relativeLineTo(9, -16)
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(8)))
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final Paint paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    final Path path = getOuterPath(rect, textDirection: textDirection);
    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
