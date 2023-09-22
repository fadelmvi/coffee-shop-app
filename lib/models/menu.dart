class Menu {
  String name;
  String caption;
  String description;
  String price;
  String imageAssets;
  bool isFavorite;

  Menu({
    required this.name,
    required this.caption,
    required this.description,
    required this.price,
    required this.imageAssets,
    required this.isFavorite,
  });
}

var menuList = [
  Menu(
    name: 'Cappucino',
    caption: 'With Chocolate',
    description:
        'A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk.',
    price: '23.000',
    imageAssets: 'assets/images/coffee.png',
    isFavorite: false,
  ),
   Menu(
    name: 'Cappucino',
    caption: 'With Oat Milk',
    description:
        'A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk.',
    price: '23.000',
    imageAssets: 'assets/images/coffee-2.png',
    isFavorite: false,
  ),
   Menu(
    name: 'Cappucino',
    caption: 'With Cheese',
    description:
        'A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk.',
    price: '23.000',
    imageAssets: 'assets/images/coffee-3.png',
    isFavorite: false,
  ),
];
