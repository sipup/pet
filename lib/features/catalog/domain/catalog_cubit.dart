import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet/features/catalog/data/catalog_repository.dart';
import 'package:pet/features/catalog/domain/catalog_state.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit(super.initialState, this.catalogRepository);

  final CatalogRepository catalogRepository;

  Future<void> fetchProducts() async {
    // устанавливаем состояние загрузки
    emit(state.copyWith(isLoading: true));
    // получаем продукты с репозитория
    final products = await catalogRepository.getProducts();
    // добавляем полученные продукты в текущее состояние
    emit(state.copyWith(product: products));
    // убираем состояние загрузки
    emit(state.copyWith(isLoading: false));
  }
}
