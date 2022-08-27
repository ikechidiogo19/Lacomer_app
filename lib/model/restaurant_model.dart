import 'package:lacomer_app/model/food_model.dart';

class Rest {
  final String name;
  final String img;
  final String? banner;
  final List<Food>? menu;

  Rest({this.menu, this.banner, required this.name, required this.img});
}

List<Rest> myrest = [
  Rest(
      name: "Mcdonalds",
      img: "Asset/images/MC.png",
      banner: "Asset/images/McDonalds.png",
      menu: myfood),
  Rest(
    menu: dominos,
    name: "Dominos",
    img: "Asset/images/dominos.png",
    banner: "Asset/images/dominos banner.jpg",
  ),
  Rest(
      menu: bucks,
      name: "StarBucks",
      img: "Asset/images/Starbucks.png",
      banner: "Asset/images/starbuck banner.jpg"),
  Rest(
      menu: kfc,
      name: "KFC",
      img: "Asset/images/Kfc.jpg",
      banner: "Asset/images/Kfc banner.jpg")
];
