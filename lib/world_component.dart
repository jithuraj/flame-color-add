import 'dart:async';

import 'package:color_add/globals.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';

import 'cell_component.dart';
import 'cell_model.dart';

class WorldCoponent extends PositionComponent with DragCallbacks{

  late Vector2 dragStartPos;
  late Vector2 dragEndPos;

  WorldCoponent():super(size: Vector2.all(5000));

  @override
  FutureOr<void> onLoad() {
    loadCellCoponents();
    add(gridComponent);
  }

  @override
  void onDragStart(DragStartEvent event) {
    dragStartPos = event.localPosition;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    dragEndPos = event.localPosition;
  }
  
  @override
  void onDragEnd(DragEndEvent event) {

    if((dragEndPos.x - dragStartPos.x) > (dragEndPos.y-dragStartPos.y)){
      // horizontal swipe
      if(dragEndPos.y < dragStartPos.y){
        print('jr left');
      }else{
        print('jr right');
      }
    }else{
      // vertical swipe
      if(dragEndPos.x < dragStartPos.x){
        print('jr up');
      }else{
        print('jr down');
      }
    }
    
    
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