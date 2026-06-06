import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:superprice/features/cart/data/cart_repository.dart';
import 'package:superprice/features/cart/data/dto/cart_request_dto.dart';
import 'package:superprice/features/cart/domain/cart_comparison_model.dart';
import 'package:superprice/features/new_list/presentation/new_list_view_model.dart';

part 'comparison_view_model.g.dart';

@riverpod
Future<CartComparison> comparison(Ref ref) async {
  final items = ref.watch(activeCartProvider);
  if (items.isEmpty) throw Exception('empty');
  final dtos = items
      .map((p) => CartItemRequestDto(
            barcode: p.barcode,
            productName: p.name,
            quantity: 1.0,
            unit: 'units',
          ))
      .toList();
  return ref.read(cartRepositoryProvider).compareCart(dtos);
}
