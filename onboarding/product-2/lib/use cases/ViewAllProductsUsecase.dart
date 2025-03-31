import 'package:product_2/entities/product.dart';

class ViewAllProductsUsecase {
  final List<Product> products;

  ViewAllProductsUsecase(this.products);

  List<Product> call() {
    return products;
  }
}
