import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../contstriants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.child,
    required this.press,
  }) : super(key: key);
  final Widget child;
  final Callback press;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: size.width * 0.85,
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
          color: kprimarycolor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
      ),
    );
  }
}
