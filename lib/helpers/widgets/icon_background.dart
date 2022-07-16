import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  final Widget child;
 const IconBackground({@required this.child, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50.0,
        height: 50.0,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Colors.white),
        child: child);
  }
}
