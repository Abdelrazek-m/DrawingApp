
import 'package:flutter/material.dart';

import '../vars.dart';

class PencilSize extends StatefulWidget {
  const PencilSize({super.key});

  @override
  State<PencilSize> createState() => _PencilSizeState();
}

class _PencilSizeState extends State<PencilSize> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: MediaQuery.of(context).padding.top + 80,
            right: 0,
            bottom: 150,
            child: RotatedBox(
              quarterTurns: 3,
              child: Slider(
                onChanged: (value) {
                  selectedWidth = value;
                  setState(() {});
                },
                min: 1,
                max: 20,
                value: selectedWidth,
              ),
            ),
          );
  }
}