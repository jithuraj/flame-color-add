import 'package:color_add/cell_model.dart';
import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

import 'game.dart';

final ColorAdd game = ColorAdd();
const double cellSize = 50;
const double cellPadding =3;
const int gridSize=4;
final Component gridComponent=Component();
final Component world=Component();
const Color bgColor = Color(0xFFeeeeee);
final Paint gridDefaultColor = BasicPalette.gray.paint();
List<CellModel> cells= [];
