import 'package:flutter/material.dart';

enum CustomIndicatorSize {
  tiny,
  normal,
  full,
}

class CustomIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final CustomIndicatorSize indicatorSize;

  const CustomIndicator(
      {required this.indicatorHeight,
      required this.indicatorColor,
      required this.indicatorSize});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _MD2Painter(this, onChanged!);
}

class _MD2Painter extends BoxPainter {
  final CustomIndicator decoration;

  _MD2Painter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    var height = configuration.size?.height ?? 0;
    var width = configuration.size?.width ?? 0;

    Rect? rect;
    if (decoration.indicatorSize == CustomIndicatorSize.full) {
      rect = Offset(offset.dx, (height - decoration.indicatorHeight ?? 3)) &
          Size(width, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == CustomIndicatorSize.normal) {
      rect =
          Offset(offset.dx + 20, (height - decoration.indicatorHeight ?? 3)) &
              Size(width - 40, decoration.indicatorHeight ?? 3);
    } else if (decoration.indicatorSize == CustomIndicatorSize.tiny) {
      rect = Offset(offset.dx + width / 2 - 8,
              (height - decoration.indicatorHeight ?? 3)) &
          Size(16, decoration.indicatorHeight ?? 3);
    }

    final Paint paint = Paint();
    paint.color = decoration.indicatorColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndCorners(rect!,
            topRight: const Radius.circular(8),
            topLeft: const Radius.circular(8),
            bottomLeft: const Radius.circular(8),
            bottomRight: const Radius.circular(8)),
        paint);
  }
}
