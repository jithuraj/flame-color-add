import 'package:flame/components.dart';

import 'globals.dart';

class CellComponent extends RectangleComponent {
  CellComponent({required Vector2 position}):super(
    paint: gridDefaultColor,
    size: Vector2.all(cellSize),
    position: position
  );
}