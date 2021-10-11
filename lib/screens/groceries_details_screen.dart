import 'package:flutter/material.dart';
import 'package:my_groceries/category_data.dart';

class GroceriesDetailsScreen extends StatelessWidget {
  static const routeName = '/groceries-details-screen';

  @override
  Widget build(BuildContext context) {
    final groceriesId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedGrocery =
        DUMMY_MEALS.firstWhere((meal) => meal.id == groceriesId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedGrocery.title}'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 0,
            ),
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedGrocery.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 0,
            ),
            child: Text(
              'Description',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
