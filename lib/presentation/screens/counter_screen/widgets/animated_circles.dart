import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCircles extends StatelessWidget {
  const AnimatedCircles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.0,
        width: 300.0,
        child: FlareActor(
          'assets/flare/circle2.flr',
          animation: "Untitled",
          color: Theme.of(context).accentColor,
        ));
  }
}
