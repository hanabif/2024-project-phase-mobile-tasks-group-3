import 'package:product_2/entities/product.dart';

class UpdateProductUsecase {
  final List<Product> products;

  UpdateProductUsecase(this.products);

  void call(Product updatedProduct) {
    var index = products.indexWhere((p) => p.id == updatedProduct.id);
    if (index != -1) {
      products[index] = updatedProduct;
      print('Product updated: ${updatedProduct.name}');
    } else {
      print('Product not found.');
    }
  }
}
