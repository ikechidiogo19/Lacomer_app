import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lacomer_app/contstriants.dart';
import 'package:lacomer_app/model/restaurant_model.dart';

class RestTile extends StatelessWidget {
  final Rest rest;
  const RestTile({Key? key, required this.rest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: size.height * 0.28,
      width: size.width * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff8a8a8a)),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          Image.asset(
            rest.img,
            height: 90,
            width: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            rest.name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w600, color: ktextcolor),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            height: 25,
            width: 25,
            child: SvgPicture.asset("Asset/icons/arrow.svg"),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xff8a8a8a))),
          )
        ],
      ),
    );
  }
}
