import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.name,
    required this.img,
    required this.price,
  }) : super(key: key);
  final String name, img, price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text.rich(
        TextSpan(children: [
          TextSpan(text: price),
          const TextSpan(text: "    "),
          const TextSpan(text: ".300 Cal")
        ]),
      ),
      trailing: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.asset(img)),
    );
  }
}
