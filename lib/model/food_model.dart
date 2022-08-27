import 'package:get/get.dart';

class Food {
  final String name;
  final String img;
  final double price;

  final quantity = 1.obs;

  Food({
    required this.name,
    required this.img,
    required this.price,
  });
}

List<Food> myfood = [
  Food(name: "Sushi Deluxe", img: "Asset/images/Sushi Dushi.png", price: 4.99),
  Food(
      name: "Cheese Burger",
      img: "Asset/images/Cheese Burger.png",
      price: 4.99),
  Food(
      name: "Chicken Wings",
      img: "Asset/images/Chicken Wings.png",
      price: 4.99),
  Food(
      name: "Cocktail Burger",
      img: "Asset/images/Cocktail Burger.png",
      price: 4.65),
  Food(name: "Double patty", img: "Asset/images/Double Patty.png", price: 4.70),
  Food(name: "Medium Hot dog", img: "Asset/images/Hot dog.png", price: 4.99),
  Food(name: "Krabby patty", img: "Asset/images/Krabby Patty.png", price: 4.99),
  Food(
      name: "Regular Burger",
      img: "Asset/images/Regular Burger.png",
      price: 4.99),
];

List<Food> bucks = [
  Food(name: "Ice tea", img: "Asset/images/Ice tea.png", price: 3.80),
  Food(name: "Hot Tea", img: "Asset/images/hot tea.jpg", price: 3.79),
  Food(name: "Iced tea", img: "Asset/images/iced coffee.jpg", price: 3.79),
  Food(
      name: "Hot chocolate",
      img: "Asset/images/white hot chocolate.jpg",
      price: 3.79),
  Food(name: "Vallina", img: "Asset/images/vallina.jpg", price: 3.50),
  Food(name: "Coffee", img: "Asset/images/coffee.jpg", price: 3.45)
];
List<Food> dominos = [
  Food(
      name: "Tomato Mozzarella",
      img: "Asset/images/Tomato mozzarella.jpg",
      price: 3.50),
  Food(name: "Prosciutto", img: "Asset/images/prosciutto.jpg", price: 3.50),
  Food(name: "HomeMade", img: "Asset/images/homemade.jpg", price: 3.50),
  Food(
      name: "Classic Chinese",
      img: "Asset/images/Classic chinese.jpg",
      price: 3.50),
];

List<Food> kfc = [
  Food(
      name: "Chicken burger",
      img: "Asset/images/2 chicken hrisper burgers.jpg",
      price: 3.50),
  Food(name: "Buddy Meal", img: "Asset/images/buddy meal.jpg", price: 3.50),
  Food(
      name: "Crispy Chicken",
      img: "Asset/images/Crispy chicken.jpg",
      price: 3.50),
  Food(
      name: "Mingles Bucket Meal",
      img: "Asset/images/Mingles Bucket Meal.jpg",
      price: 3.50),
];
