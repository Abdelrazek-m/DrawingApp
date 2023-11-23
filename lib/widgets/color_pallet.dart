
import 'package:flutter/material.dart';

import '../vars.dart';

class ColorPallet extends StatefulWidget {
  const ColorPallet({super.key});

  @override
  State<ColorPallet> createState() => _ColorPalletState();
}

class _ColorPalletState extends State<ColorPallet> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: colorsList.length,
                separatorBuilder: (_, index) => const SizedBox(
                  width: 8,
                ),
                itemBuilder: (ctx, index) => GestureDetector(
                  onTap: () {
                    selectedColor = colorsList[index];
                    setState(() {});
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: colorsList[index],
                      shape: BoxShape.circle,
                    ),
                    foregroundDecoration: BoxDecoration(
                      border: selectedColor == colorsList[index]
                        ? Border.all(color: Colors.indigo, width: 4)
                        : null,
                        shape: BoxShape.circle
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}