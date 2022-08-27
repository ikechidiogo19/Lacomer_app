import 'package:flutter/material.dart';

import '../contstriants.dart';

class Star extends StatelessWidget {
  const Star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "4.5",
          style: TextStyle(color: Colors.grey, fontSize: 24),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.star,
          color: kprimarycolor,
        ),
        Icon(
          Icons.star,
          color: kprimarycolor,
        ),
        Icon(
          Icons.star,
          color: kprimarycolor,
        ),
        Icon(
          Icons.star,
          color: kprimarycolor,
        ),
        Icon(
          Icons.star,
          color: Colors.grey,
        ),
      ],
    );
  }
}
