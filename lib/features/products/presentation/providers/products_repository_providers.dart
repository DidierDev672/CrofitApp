import 'package:comicsapp/features/auth/presention/providers/auth_provider.dart';
import 'package:comicsapp/features/products/domain/repositories/products_repository.dart';
import 'package:comicsapp/features/products/infrastructure/datasource/products_datasource_impl.dart';
import 'package:comicsapp/features/products/infrastructure/repositories/products_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  final accessToken = ref.watch(authProvider).user?.token ?? '';
  final productsRepository =
      ProductRepositoryImpl(ProductsDatasourceImpl(accessToken: accessToken));
  return productsRepository;
});
