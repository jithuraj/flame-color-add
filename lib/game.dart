import 'dart:async';

import 'package:color_add/cell_component.dart';
import 'package:color_add/cell_model.dart';
import 'package:color_add/globals.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

class ColorAdd extends FlameGame with HasDraggableComponents{

  @override
  Color backgroundColor() {
    return const Color(0xFFeeeeee);
  }

  @override
  FutureOr<void> onLoad() {
    loadCellCoponents();
    add(gridComponent);
  }


  loadCellCoponents(){
    for(int row=0;row<gridSize;row++){
      for(int column=0;column<gridSize;column++){
        CellModel cell = CellModel(
            component: CellComponent(
            position: Vector2(row*(cellSize+cellPadding), column*(cellSize+cellPadding))
            ), 
            row: row, 
            column:column
          );
        cells.add(cell);
        gridComponent.add(cell.component);
      }
    }
    
  }

}