import '../../domain/entities/Product.dart';
import '../../domain/repositories/ProductRepository.dart';
import 'package:hive/hive.dart';

class ProductAdapter implements ProductRepository {
  final _productBox = Hive.box('products');

  @override
  Future<List<Product>> getProducts() async {
    final products = _productBox.values.toList().cast<Product>();
    return products;
  }

  @override
  Future<Product> addProduct(Product product) async {
    await _productBox.add(product);
    return product;
  }

  @override
  Future<void> updateProduct(Product product) async {
    await _productBox.put(product.id, product);
  }

  @override
  Future<void> deleteProduct(int id) async {
    await _productBox.delete(id);
  }
}
