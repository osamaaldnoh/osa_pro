import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_barcode/domain/entities/item_barcode_entities.dart';

import '../repositories/item_barcode_repositories.dart';

class ItemBarcodeUseCase {
  final ItemBarcodeRepository repository;

  ItemBarcodeUseCase({required this.repository});

  Future<Either<Failure, List<ItemBarcodeEntity>>> call() async {
    return await repository.getItemBarcodes();
  }
}
