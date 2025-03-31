class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  @override
  String toString() {
    return 'Product(ID: $id, Name: $name, Description: $description, Price: \$${price.toStringAsFixed(2)})';
  }
}
