import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_slider.dart';

import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        PlasmaBackGround(),
        Positioned(
          bottom: 35.0,
          child: CounterSlider(),
        ),
        Positioned(
          top: 48.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedCircles(),
              CounterValue(),
            ],
          ),
        ),
      ],
    ));
  }
}
