import 'dart:ui';

import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(20);

class GlassBox extends StatelessWidget {
  const GlassBox(
      {super.key,
      required this.child,
      required this.height,
      required this.width});
  final width;
  final height;
  final child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: _borderRadius,
                border: Border.all(color: Colors.white.withOpacity(0.5)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
