class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(image: 'images/nike1.png', title: "Nike1"),
  Category(image: 'images/nike2.png', title: "Nike2"),
  Category(image: 'images/nike3.png', title: "Nike3"),
];
