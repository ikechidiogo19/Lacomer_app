import 'package:flutter/material.dart';
import 'package:lacomer_app/utils/default_button.dart';

import '../contstriants.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: Column(children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: kprimarycolor,
                size: size.height * .35,
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Text(
                "success!",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kprimarycolor),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Text(
                "Check your door step in 10mins",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: kprimarycolor),
              ),
            ]),
          ),
          DefaultButton(
              child: Text(
                "Monitor Your delivery ",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: klighttextcolor),
              ),
              press: () {})
        ],
      ),
    );
  }
}
