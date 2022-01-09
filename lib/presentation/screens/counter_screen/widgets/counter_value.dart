import 'package:flutter/material.dart';

class CounterValue extends StatelessWidget {
  const CounterValue({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '-1',
      style: Theme.of(context).textTheme.headline1.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 100.0,
          ),
    );
  }
}
