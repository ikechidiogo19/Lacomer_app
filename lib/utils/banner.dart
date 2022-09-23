import 'package:flutter/material.dart';

import '../contstriants.dart';
import '../model/restaurant_model.dart';

class Bannerimg extends StatelessWidget {
  const Bannerimg({
    Key? key,
    required this.restitems,
  }) : super(key: key);

  final Rest restitems;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      width: size.width,
      child: Stack(children: [
        Container(
          height: size.height * 0.3,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(restitems.banner!)),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
        ),
        Positioned(
          right: 35,
          bottom: 0,
          child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(restitems.img)),
                shape: BoxShape.circle,
                color: Colors.white,
              )),
        ),
        Positioned(
            top: 20,
            right: 5,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: klighttextcolor,
                    )),
                const Icon(
                  Icons.search,
                  color: klighttextcolor,
                )
              ],
            )),
        Positioned(
            left: 15,
            bottom: size.height * 0.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restitems.name,
                  style: const TextStyle(color: klighttextcolor, fontSize: 30),
                ),
                const Text(
                  "Open 9 - 10pm",
                  style: TextStyle(color: klighttextcolor, fontSize: 15),
                )
              ],
            ))
      ]),
    );
  }
}
