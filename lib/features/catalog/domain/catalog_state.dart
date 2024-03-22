import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet/features/product/domain/product_entity.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState({
    required List<ProductEntity> product,
    required bool isLoading,
  }) = _CatalogState;
}
