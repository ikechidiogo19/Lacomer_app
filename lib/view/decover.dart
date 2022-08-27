import 'package:flutter/material.dart';
import 'package:lacomer_app/model/food_model.dart';
import 'package:lacomer_app/model/restaurant_model.dart';
import 'package:lacomer_app/utils/food_card.dart';

import 'package:lacomer_app/utils/rest_card.dart';
import 'package:lacomer_app/utils/see_more.dart';
import 'package:lacomer_app/utils/textfield.dart';
import 'package:lacomer_app/view/details.dart';
import 'package:lacomer_app/view/rest_details.dart';

class DiscoverPage extends StatelessWidget {
  static String routename = "/Discover";
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage("Asset/images/marques.png"),
            ),
            SizedBox(
              width: 15,
            )
          ],
          elevation: 0.0,
          // leading: const Icon(
          //   Icons.menu,
          //   color: Colors.black,
          // ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TextField
                const TextWidget(),
                const SizedBox(
                  height: 15,
                ),
                //Food card
                SizedBox(
                  height: size.height * 0.28,
                  width: size.width,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: myfood.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DetailsPage(
                                  fooddetails: myfood[i],
                                );
                              },
                            ));
                            //Navigator.pushNamed(context, DetailsPage.routename);
                          },
                          child: FoodTile(
                            food: myfood[i],
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                //see more
                const SeeMore(text: "Restaurants Near You"),
                const SizedBox(
                  height: 10,
                ),
                // Resturant card
                SizedBox(
                  height: size.height * 0.28,
                  width: size.width,
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RestDetails(
                                  restitems: myrest[index],
                                );
                              }));
                            },
                            child: RestTile(rest: myrest[index]));
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                      itemCount: myrest.length),
                ),
                const SizedBox(
                  height: 10,
                ),
                // see more
                const SeeMore(text: "Recents")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
