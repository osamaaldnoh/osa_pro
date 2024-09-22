class InventoryItemsEntity {
  int? id;
  String? productName;
  String? group;
  String? unit;
  String? image;
  int? quantity;
  int? number;
  int? difference;
  String? itemBarcode;

  InventoryItemsEntity({
    this.id,
    this.productName,
    this.group,
    this.unit,
    this.image,
    this.quantity,
    this.number,
    this.difference,
    this.itemBarcode,
  });

  factory InventoryItemsEntity.fromJson({required Map<String, dynamic> json}) {
    return InventoryItemsEntity(
        id: json['id'],
        productName: json['productName'],
        group: json['group'],
        unit: json['unit'],
        image: json['image'],
        quantity: json['quantity'],
        number: json['number'],
        difference: json['difference'],
        itemBarcode: json['itemBarcode']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "productName": productName,
      "group": group,
      "unit": unit,
      "image": image,
      "quantity": quantity,
      "number": number,
      "difference": difference,
      "itemBarcode": itemBarcode,
    };
  }
}
