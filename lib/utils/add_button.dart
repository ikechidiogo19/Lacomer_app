import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class AddButton extends StatelessWidget {
  final IconData icon;
  final Callback? press;
  const AddButton({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press;
      },
      child: Container(
        height: 50,
        width: 50,
        child: Icon(
          icon,
          color: Colors.grey,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff8a8a8a)),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      ),
    );
  }
}
