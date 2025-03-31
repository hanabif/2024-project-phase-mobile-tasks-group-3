import 'package:product_2/entities/product.dart';
import 'package:product_2/use%20cases/CreateProductUsecase.dart';
import 'package:product_2/use%20cases/DeleteProductUsecase.dart';
import 'package:product_2/use%20cases/UpdateProductUsecase.dart';
import 'package:product_2/use%20cases/ViewAllProductsUsecase.dart';
import 'package:product_2/use%20cases/ViewProductUsecase.dart';

class ProductManager {
  List<Product> products = [];

  final viewAllProductsUsecase;
  final viewProductUsecase;
  final createProductUsecase;
  final updateProductUsecase;
  final deleteProductUsecase;

  ProductManager()
      : viewAllProductsUsecase = ViewAllProductsUsecase([]),
        viewProductUsecase = ViewProductUsecase([]),
        createProductUsecase = CreateProductUsecase([]),
        updateProductUsecase = UpdateProductUsecase([]),
        deleteProductUsecase = DeleteProductUsecase([]);

  void addProduct(Product product) => createProductUsecase.call(product);

  void viewAllProducts() => print(viewAllProductsUsecase.call());

  void viewSingleProduct(String id) => print(viewProductUsecase.call(id));

  void editProduct(Product updatedProduct) => updateProductUsecase.call(updatedProduct);

  void deleteProduct(String id) => deleteProductUsecase.call(id);
}
