import 'package:product_2/entities/product.dart';

class CreateProductUsecase {
  final List<Product> products;

  CreateProductUsecase(this.products);

  void call(Product product) {
    products.add(product);
    print('Product added: ${product.name}');
  }
}
