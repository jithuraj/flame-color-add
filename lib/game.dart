import 'dart:async';

import 'package:color_add/cell_component.dart';
import 'package:color_add/cell_model.dart';
import 'package:color_add/globals.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';

import 'world_component.dart';

class ColorAdd extends FlameGame with HasDraggableComponents{

  @override
  Color backgroundColor() {
    return const Color(0xFFeeeeee);
  }

  @override
  FutureOr<void> onLoad() {
    add(WorldCoponent());
  }

}