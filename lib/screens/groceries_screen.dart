import 'package:flutter/material.dart';
import 'package:my_groceries/widgets/groceries_items.dart';

import '../category_data.dart';

class GroceriesScreen extends StatelessWidget {
  static const routeName = '/groceries-category';
  // final String categoryid;
  // final String categorytitle;
  //
  // GroceriesScreen(this.categoryid, this.categorytitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categorytitle = routeArgs['title'];
    final categoryid = routeArgs['id'];
    final CategoriesMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    var appBarColor = Colors.red[400];
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle!),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return GroceriesItem(
            title: CategoriesMeal[i].title,
            imageUrl: CategoriesMeal[i].imageUrl,
            price: CategoriesMeal[i].price,
            id: CategoriesMeal[i].id,
          );
        },
        itemCount: CategoriesMeal.length,
      ),
    );
  }
}
