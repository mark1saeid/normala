import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundLayer extends StatefulWidget {
  final Widget child;
  const BackgroundLayer({@required this.child,Key key}) : super(key: key);

  @override
  _BackgroundLayerState createState() => _BackgroundLayerState();
}

class _BackgroundLayerState extends State<BackgroundLayer> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
            gradient: backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: height * .1),
              child: widget.child,
            ),

          ),
        ),
      ),
    );
  }
}
