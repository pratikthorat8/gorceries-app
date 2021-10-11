import 'package:flutter/material.dart';
import 'package:my_groceries/category_data.dart';
import 'package:my_groceries/widgets/categories_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBarColor = Colors.red[400];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groceries'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: appBarColor,
      ),
      body: GridView(
          padding: const EdgeInsets.all(10),
          children: DUMMY_CATEGORIES
              .map((catData) =>
                  CategoryItems(catData.id, catData.title, catData.color))
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          )),
    );
  }
}
