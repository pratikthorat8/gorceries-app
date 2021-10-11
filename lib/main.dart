import 'package:flutter/material.dart';
import 'package:my_groceries/screens/groceries_details_screen.dart';
import 'package:my_groceries/screens/groceries_screen.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //removes the debug banner from top right of the app screen.
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 204, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 20, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 20, 51, 1),
              ),
              headline5: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.amberAccent),
      ),
      title: 'Groceries',
      // home: const CategoriesScreen(),
      routes: {
        //This is just another way to get the home route.
        '/': (ctx) => CategoriesScreen(),
        GroceriesScreen.routeName: (BuildContext ctx) => GroceriesScreen(),
        GroceriesDetailsScreen.routeName: (BuildContext context) =>
            GroceriesDetailsScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
