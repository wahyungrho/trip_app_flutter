// This file model data for category

class CategoryModel {
  final int? id;
  final String? name;
  final String? image;

  CategoryModel({this.id, this.name, this.image});
}

List<CategoryModel> listCategory = [
  CategoryModel(
      id: 0, name: "All Place", image: "assets/images/cat_all_destination.png"),
  CategoryModel(
      id: 1, name: "Mountain", image: "assets/images/cat_mountain.png"),
  CategoryModel(id: 2, name: "Beach", image: "assets/images/cat_beach.png"),
  CategoryModel(id: 3, name: "Hotels", image: "assets/images/cat_hotels.png"),
  CategoryModel(
      id: 4, name: "Healthcare", image: "assets/images/cat_healtcare.png"),
  CategoryModel(
      id: 5, name: "Culinary", image: "assets/images/cat_culinary.png"),
];
