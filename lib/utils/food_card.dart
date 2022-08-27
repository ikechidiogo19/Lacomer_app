import 'package:flutter/material.dart';
import 'package:lacomer_app/contstriants.dart';
import 'package:lacomer_app/model/food_model.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({Key? key, required this.food}) : super(key: key);

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
      child: Column(children: [
        Text(
          food.name,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: ktextcolor, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 15,
        ),
        Image.asset(
          food.img,
          height: 70,
          width: 100,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("\$${food.price.toStringAsFixed(2)}",
                style: const TextStyle(color: ktextcolor)),
          ],
        )
      ]),
    );
  }
}
