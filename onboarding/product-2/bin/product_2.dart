// bin/main.dart
import 'dart:io';
import 'package:product_2/product_manager.dart';
import 'package:product_2/entities/product.dart';

void main() {
  var productManager = ProductManager();

  while (true) {
    print('\n\n--- Welcome to eCommerce Application ---\n\n\n');
    print('1. Add a Product');
    print('2. View All Products');
    print('3. View a Single Product');
    print('4. Edit a Product');
    print('5. Delete a Product');
    print('6. Exit');
    stdout.write('Enter your choice: ');

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter product name: ');
        var name = stdin.readLineSync()!;
        stdout.write('Enter product description: ');
        var description = stdin.readLineSync()!;
        stdout.write('Enter product price: ');
        var price = double.parse(stdin.readLineSync()!);
        stdout.write('Enter product image path (e.g., assets/images/laptop.png): ');
        var imageUrl = stdin.readLineSync()!;  

        var product = Product(
          id: '1', 
          name: name,
          description: description,
          price: price,
          imageUrl: imageUrl,  
        );
        productManager.addProduct(product);
        break;

      case '2':
        productManager.viewAllProducts();
        break;

      case '3':
        stdout.write('Enter the product name to view: ');
        var name = stdin.readLineSync()!;
        productManager.viewSingleProduct(name);
        break;

      case '4':
        stdout.write('Enter the product name to edit: ');
        var name = stdin.readLineSync()!;
        stdout.write('Enter new product name: ');
        var newName = stdin.readLineSync()!;
        stdout.write('Enter new product description: ');
        var newDescription = stdin.readLineSync()!;
        stdout.write('Enter new product price: ');
        var newPrice = double.parse(stdin.readLineSync()!);
        stdout.write('Enter new product image path: ');
        var newImageUrl = stdin.readLineSync()!;

        var updatedProduct = Product(
          id: name,  
          name: newName,
          description: newDescription,
          price: newPrice,1
          imageUrl: newImageUrl,
        );
        productManager.editProduct(updatedProduct);
        break;

      case '5':
        stdout.write('Enter the product name to delete: ');
        var name = stdin.readLineSync()!;
        productManager.deleteProduct(name);
        break;

      case '6':
        print('Exiting the application. Goodbye!');
        return;

      default:
        print('Invalid choice. Please try again.');
    }
  }
}
