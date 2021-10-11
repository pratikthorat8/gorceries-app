class Meal {
  //Things that I want in my ingredients
  final String id;
  final String title;
  final List<String> categories;
  final String imageUrl;
  final int price;

  const Meal(
      {required this.id,
      required this.title,
      required this.categories,
      required this.imageUrl,
      required this.price});
}
