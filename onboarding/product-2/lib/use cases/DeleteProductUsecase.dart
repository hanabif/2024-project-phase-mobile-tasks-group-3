import 'package:product_2/entities/product.dart';

class DeleteProductUsecase {
  final List<Product> products;

  DeleteProductUsecase(this.products);

  void call(String id) {
    products.removeWhere((p) => p.id == id);
    print('Product deleted: $id');
  }
}
