import 'package:flutter/material.dart';

import '../contstriants.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "see more",
          style: TextStyle(color: kprimarycolor),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: ktextcolor, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
