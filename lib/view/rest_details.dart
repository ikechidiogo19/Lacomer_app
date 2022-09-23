import 'package:flutter/material.dart';
import 'package:lacomer_app/contstriants.dart';

import '../utils/banner.dart';

import '../model/restaurant_model.dart';
import '../utils/tile.dart';

class RestDetails extends StatefulWidget {
  const RestDetails({
    Key? key,
    required this.restitems,
  }) : super(key: key);
  final Rest restitems;

  @override
  State<RestDetails> createState() => _RestDetailsState();
}

class _RestDetailsState extends State<RestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Bannerimg(restitems: widget.restitems),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Most popular",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: ktextcolor, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 20,
          ), //

          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
              itemCount: widget.restitems.menu!.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (
                context,
                index,
              ) {
                return Tile(
                    name: widget.restitems.menu![index].name,
                    img: widget.restitems.menu![index].img,
                    price: widget.restitems.menu![index].price.toString());
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
        backgroundColor: kprimarycolor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
