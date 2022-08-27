import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.09,
      width: size.width * 0.9,
      child: TextField(
        decoration: InputDecoration(
            hintStyle: const TextStyle(color: Color(0xff8a8a8a)),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff8a8a8a),
            ),
            filled: true,
            fillColor: const Color(0xfff2f2f2),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xfff2f2f2)),
                gapPadding: 10,
                borderRadius: BorderRadius.circular(20)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xfff2f2f2)),
                gapPadding: 10,
                borderRadius: BorderRadius.circular(20)),
            hintText: "search"),
      ),
    );
  }
}
