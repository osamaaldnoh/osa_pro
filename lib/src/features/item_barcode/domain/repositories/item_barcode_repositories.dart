import 'package:dartz/dartz.dart';
import 'package:osa_pro/src/core/error/failure.dart';
import 'package:osa_pro/src/features/item_barcode/domain/entities/item_barcode_entities.dart';

abstract class ItemBarcodeRepository {
  Future<Either<Failure, List<ItemBarcodeEntity>>> getItemBarcodes();
}
