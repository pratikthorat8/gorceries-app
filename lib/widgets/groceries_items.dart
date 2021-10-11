import 'package:flutter/material.dart';
import 'package:my_groceries/screens/groceries_details_screen.dart';

class GroceriesItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int price;

  GroceriesItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.price}) {}

  void selectGroceries(BuildContext context) {
    Navigator.of(context)
        .pushNamed(GroceriesDetailsScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGroceries(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.description),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        //use '20B9' for indian rupee icon.
                        '$title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money_sharp),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        //use '20B9' for indian rupee icon.
                        '$price',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
