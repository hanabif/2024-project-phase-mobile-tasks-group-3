class Product {
  String name;
  String description;
  double price;

  Product({
    required this.name,
    required this.description,
    required this.price,
  });

  String get getName => name;
  String get getDescription => description;
  double get getPrice => price;
  set setName(String newName) => name = newName;
  set setDescription(String newDescription) => description = newDescription;
  set setPrice(double newPrice) => price = newPrice;
  @override
  String toString() {
    return 'Product(Name: $name, Description: $description, Price: \$${price.toStringAsFixed(2)})';
  }
}
