import 'package:product_2/entities/product.dart';

class ViewProductUsecase {
  final List<Product> products;

  ViewProductUsecase(this.products);

  Product? call(String id) {
    return products.firstWhere((p) => p.id == id, orElse: () => null as Product);
  }
}
