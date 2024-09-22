import 'package:drift/drift.dart';
import 'package:osa_pro/src/features/item_barcode/data/models/item_barcode_models.dart';

@UseRowClass(ItemBarcodeModel)
class ItemBarcodeTable extends Table {
  IntColumn get id => integer()();
  IntColumn get itemId => integer()();
  TextColumn get itemBarcode => text()();
}
