import 'product.dart';

class ProductManager {
  List<Product> products = [];

  ProductManager() {
    addProduct(Product(
        name: 'Laptop',
        description: 'High-performance laptop',
        price: 1200.00));
    addProduct(Product(
        name: 'Smartphone ',
        description: 'Latest model smartphone',
        price: 800.00));
    addProduct(Product(
        name: 'Headphones',
        description: 'Noise-cancelling headphones',
        price: 250.00));
  }

  void addProduct(Product product) {
    products.add(product);
    print('Product added: ${product.name}');
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print('No products available.');
    } else {
      print('All Products:');
      for (var product in products) {
        print(product);
      }
    }
  }

  void viewSingleProduct(String name) {
    var product = products.firstWhere(
      (p) => p.name == name,
      orElse: () => Product(name: '', description: '', price: 0),
    );
    if (product.name.isNotEmpty) {
      print('Product Found: $product');
    } else {
      print('Product not found.');
    }
  }

  void editProduct(
      String name, String newName, String newDescription, double newPrice) {
    var product = products.firstWhere(
      (p) => p.name == name,
      orElse: () => Product(name: '', description: '', price: 0),
    );
    if (product.name.isNotEmpty) {
      product.setName = newName;
      product.setDescription = newDescription;
      product.setPrice = newPrice;
      print('Product updated: $product');
    } else {
      print('Product not found.');
    }
  }

  void deleteProduct(String name) {
    products.removeWhere((p) => p.name == name);
    print('Product deleted: $name');
  }
}
