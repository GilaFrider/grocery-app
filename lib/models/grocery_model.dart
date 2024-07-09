import 'package:flutter/material.dart';

class Item {
  final bool myItems;
  final String title;
  final String description;
  final Color color;
  final Color bgColor;
  final String price;
  final String lb;
  final String imageUrl;
  final int height;

  Item({
    required this.myItems,
    required this.title,
    required this.description,
    required this.color,
    required this.bgColor,
    required this.price,
    required this.lb,
    required this.imageUrl,
    required this.height,
  });
}
List<Item> foodShopItems() => [
  Item(
    myItems: true,
    title: 'Strawberries',
    description: 'A strawberry is a short plant in the wild strawberry genus of the rose family. The name is also used for its very common sweet edible "fruit" and for flavors that taste like it.',
    color: Color(0xFFF0A8AF),
    bgColor: Color(0xFFFFE3E6),
    price: '2.45',
    lb: '1 kg',
    imageUrl: 'images/strawberry.png',
    height: 250,
  ),
  Item(
    myItems: false,
    title: 'Lychee',
    description: "Lychee is a tropical fruit that is unique in appearance and flavor. It's native to China but can grow in certain warm regions of the U.S like Florida and Hawaii.",
    color: Color.fromARGB(255, 148, 248, 128),
    bgColor: Color(0xFFD8FFD0),
    price: '8.22',
    lb: '1 lb',
    imageUrl: 'images/lychee.png',
    height: 200,
  ),
Item(
    myItems: true,
    title: 'Dragon Fruit',
    description: 'Dragon fruit, also known as pitaya or the strawberry pear, is a beautiful tropical fruit that is sweet and crunchy.',
    color: Color(0xFFEBB1E4),
    bgColor: Color(0xFFFFEEFE),
    price: '5.36',
    lb: 'Average 0.87 lb',
    imageUrl: 'images/dragon fruit.png',
    height: 250,
  ),
  Item(
    myItems: false,
    title: 'Blueberries',
    description: 'Blueberries can be eaten freshly picked or incorporated into a variety of recipes. They can also be purchased frozen.',
    color: Color(0xFFBAB9F5),
    bgColor: Color(0xFFE4E5FE),
    price: '14.80',
    lb: '1 lb',
    imageUrl: 'images/blueberry.png',
    height: 190,
  ),
Item(
    myItems: true,
    title: 'Mango',
    description: "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
    color: Color(0xFFFFB25F),
    bgColor: Color(0xFFFFE08E),
    price: '1.01',
    lb: 'each',
    imageUrl: 'images/mango.png',
    height: 250,
  ),
  Item(
    myItems: false,
    title: 'Papaya',
    description: 'Papayas grow in tropical climates and are also known as papaws or pawpaws. Their sweet taste, vibrant color, and the wide variety of health benefits they provide make them a popular fruit.',
    color: Color(0xFFF0A8AF),
    bgColor: Color(0xFFFFE3E6),
    price: '1.99',
    lb: '2 units',
    imageUrl: 'images/papaya.png',
    height: 200,
  ),
Item(
    myItems: true,
    title: 'Bananas',
    description: 'Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.',
    color: Color(0xFFFDD284),
    bgColor: Color(0xFFFFFBD8),
    price: '1.15',
    lb: '1 lb',
    imageUrl: 'images/bananas.png',
    height: 250,
  ),
  Item(
    myItems: false,
    title: 'Pineapple',
    description: 'Pineapples are tropical fruits that are rich in vitamins, enzymes and antioxidants. They may help boost the immune system, build strong bones and aid indigestion.',
    color: Color(0xFFFDD284),
    bgColor: Color(0xFFFFFBD8),
    price: '3.55',
    lb: 'each',
    imageUrl: 'images/pineapple.png',
    height: 200,
  ),
];