

import 'package:flutter/material.dart';
import '../widgets/color_pallet.dart';
import '../widgets/custom_canvas.dart';
import '../widgets/pencil_size.dart';
import '../widgets/undo_and_redo_buttons.dart'; 

class DrawingRoomView extends StatefulWidget {
  const DrawingRoomView({super.key});

  @override
  State<DrawingRoomView> createState() => _DrawingRoomViewState();
}

class _DrawingRoomViewState extends State<DrawingRoomView> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          /// Canvas
          CustomCanvas(),

          /// Color Pallet
          ColorPallet(),

          /// Pencil Size
          PencilSize(),
        ],
      ),
      floatingActionButton: UndoAndRedoButtons(),
    );
  }
}
