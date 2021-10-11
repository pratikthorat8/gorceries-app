import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Grains',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Dairy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Kids Food',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Meat',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Breakfast Essentials',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Spices',
    color: Colors.green,
  )
];

const DUMMY_MEALS = [
  Meal(
      id: 'm1',
      categories: [
        'c1',
      ],
      title: 'Toor Daal',
      imageUrl:
          'https://m.media-amazon.com/images/I/81d-QONhJiL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm2',
      categories: [
        'c1',
      ],
      title: 'Masoor Daal',
      imageUrl:
          'https://m.media-amazon.com/images/I/610MEOn7+6L._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm3',
      categories: [
        'c1',
      ],
      title: 'Wheat',
      imageUrl:
          'https://m.media-amazon.com/images/I/71OTUv0Vx2L._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm4',
      categories: [
        'c1',
      ],
      title: 'Jowar',
      imageUrl:
          'https://m.media-amazon.com/images/I/41cM0hPUv+S._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm5',
      categories: [
        'c1',
      ],
      title: 'Bajra',
      imageUrl:
          'https://m.media-amazon.com/images/I/817y49Ha0EL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm6',
      categories: [
        'c1',
      ],
      title: 'Rice',
      imageUrl:
          'https://m.media-amazon.com/images/I/51-A9DrTV6L._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm7',
      categories: [
        'c2',
        'c5',
      ],
      title: 'Milk',
      imageUrl:
          'https://m.media-amazon.com/images/I/71TSXjY7SZL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm8',
      categories: [
        'c2',
      ],
      title: 'Paneer',
      imageUrl:
          'https://m.media-amazon.com/images/I/81hD14MN91L._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm9',
      categories: [
        'c2',
      ],
      title: 'Curd',
      imageUrl:
          'https://m.media-amazon.com/images/I/51UsWBoNiyL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm10',
      categories: [
        'c2',
      ],
      title: 'Cheese',
      imageUrl:
          'https://m.media-amazon.com/images/I/717nGYriPSL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm11',
      categories: [
        'c2',
        'c5',
      ],
      title: 'Butter',
      imageUrl:
          'https://m.media-amazon.com/images/I/715XDBQH2aL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm12',
      categories: [
        'c3',
      ],
      title: 'Cornflakes',
      imageUrl:
          'https://m.media-amazon.com/images/I/71cqU2ZyPNL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm13',
      categories: [
        'c3',
      ],
      title: 'Chocolate Cereal',
      imageUrl:
          'https://m.media-amazon.com/images/I/71Y2olzelXS._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm14',
      categories: [
        'c3',
      ],
      title: 'Cerelac',
      imageUrl:
          'https://m.media-amazon.com/images/I/81+jQkH+zgL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm15',
      categories: [
        'c3',
      ],
      title: 'Bournvita',
      imageUrl:
          'https://m.media-amazon.com/images/I/51gn+ccasqL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm16',
      categories: [
        'c4',
      ],
      title: 'Chicken',
      imageUrl:
          'https://m.media-amazon.com/images/I/610j9uIMfgL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm17',
      categories: [
        'c4',
      ],
      title: 'Fish',
      imageUrl:
          'https://m.media-amazon.com/images/I/61CTsyth3EL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm18',
      categories: [
        'c4',
      ],
      title: 'pork',
      imageUrl:
          'https://m.media-amazon.com/images/I/71OK0rOYwNL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm19',
      categories: [
        'c4',
        'c5',
      ],
      title: 'Eggs',
      imageUrl:
          'https://m.media-amazon.com/images/I/41++Gkb02ML._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm20',
      categories: ['c5'],
      title: 'Biscuits',
      imageUrl:
          'https://m.media-amazon.com/images/I/71S7cqqMMsL._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm21',
      categories: ['c5'],
      title: 'Toast',
      imageUrl:
          'https://m.media-amazon.com/images/I/81NydMIxB7L._AC_UL320_.jpg',
      price: 25),
  Meal(
      id: 'm22',
      categories: ['c5'],
      title: 'Bread',
      imageUrl:
          'https://m.media-amazon.com/images/I/71YLQwJhqDL._AC_UL320_.jpg',
      price: 25),
  Meal(
    id: 'm23',
    categories: [
      'c5',
    ],
    title: 'Oats',
    imageUrl: 'https://m.media-amazon.com/images/I/71zQEQXpuLL._AC_UL320_.jpg',
    price: 25,
  ),
  Meal(
    id: 'm24',
    categories: [
      'c6',
    ],
    title: 'Chilly Powder',
    imageUrl: 'https://m.media-amazon.com/images/I/71RtaV7h-1L._AC_UL320_.jpg',
    price: 25,
  ),
  Meal(
    id: 'm25',
    categories: [
      'c6',
    ],
    title: 'Heeng/Asefoetida',
    imageUrl: 'https://m.media-amazon.com/images/I/61aztkQuDeL._AC_UL320_.jpg',
    price: 25,
  ),
  Meal(
    id: 'm26',
    categories: [
      'c6',
    ],
    title: 'Turmeric Powder',
    imageUrl: 'https://m.media-amazon.com/images/I/61FNy0b3SlL._AC_UL320_.jpg',
    price: 25,
  ),
  Meal(
    id: 'm24',
    categories: [
      'c6',
    ],
    title: 'Jeera Powder',
    imageUrl: 'https://m.media-amazon.com/images/I/71P98pmomOS._AC_UL320_.jpg',
    price: 25,
  ),
];
