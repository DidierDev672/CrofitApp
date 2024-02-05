import '../../domain/entities/Product.dart';
import '../../domain/repositories/ProductRepository.dart';

class ProductService implements ProductRepository {
  final List<Product> _produts = [];

  @override
  Future<List<Product>> getProducts() async {
    return _produts;
  }

  @override
  Future<Product> addProduct(Product product) async {
    // TODO: implement addProduct
    _produts.add(product);
    return product;
  }

  @override
  Future<void> deleteProduct(int id) async {
    // TODO: implement deleteProduct
    final index = _produts.indexWhere((p) => p.id == id);
    if (index != -1) {
      _produts.removeAt(index);
    }
  }

  @override
  Future<void> updateProduct(Product product) async {
    // TODO: implement updateProduct
    final index = _produts.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _produts[index] = product;
    }
  }
}
