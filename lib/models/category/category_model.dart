enum CategoryType {
  income,
  expense,
}

class CategoryModel {
  final String name;
  final bool isDeleated;
  final CategoryType type;

  CategoryModel({
    required this.name,
    required this.type,
    this.isDeleated = false,
  });
}
