import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/palette.dart';

import 'globals.dart';

class CellComponent extends RectangleComponent with DragCallbacks{
  CellComponent({required Vector2 position}):super(
    paint: gridDefaultColor,
    size: Vector2.all(cellSize),
    position: position
  );

  @override
  void onDragStart(DragStartEvent event) {
    paint = BasicPalette.green.paint();
  }
}