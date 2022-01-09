// Dummy Widget

import 'package:bloc_architecture_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class PlasmaBackGround extends StatelessWidget {
  const PlasmaBackGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 9,
        color: Theme.of(context)
            .particlesColour, // remember to import app_theme file ( where this extnsion is defined)
        blur: 0.3,
        size: 0.40,
        speed: 3.916667302449544,
        offset: 0,
        blendMode: BlendMode.plus,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}
