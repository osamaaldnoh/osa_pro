import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/Inventory_document_data_entity.dart';
import 'package:osa_pro/src/features/inventory_items/domain/entities/entities.dart';
import 'package:osa_pro/src/features/inventory_items/presentation/getX/inventoryitems_controller.dart';
import 'package:osa_pro/src/features/item_groups/presentation/getX/item_groups_controller.dart';
import 'package:osa_pro/src/features/items/presentation/getX/items_controller.dart';
import 'package:osa_pro/src/features/units/presentation/getX/units_controller.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DataTableItemsWidget extends StatelessWidget {
  DataTableItemsWidget({super.key, required this.inventoryItemsController});
  final InventoryItemsController inventoryItemsController;

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
      data: SfDataGridThemeData(
        headerColor: Theme.of(context).primaryColor,
      ),
      child: SfDataGrid(
        allowSwiping: true,
        swipeMaxOffset: SizeManager.s100,
        source: EmployeeDataSource(
            employees: inventoryItemsController
                    .searchInventoryDocumentDataEntityList.isNotEmpty
                ? inventoryItemsController.searchInventoryDocumentDataEntityList
                : inventoryItemsController.inventoryDocumentDataEntityList),
        // allowColumnsResizing: false,
        shrinkWrapRows: true,
        isScrollbarAlwaysShown: false,
        columnWidthMode: ColumnWidthMode.auto,

        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
        startSwipeActionsBuilder:
            (BuildContext context, DataGridRow row, int rowIndex) {
          return GestureDetector(
              onTap: () {
                // _employeeDataSource.dataGridRows.insert(
                //     rowIndex,
                //     DataGridRow(
                //       cells: [
                //       DataGridCell(

                //         value: 1011, columnName: 'id'),
                //       DataGridCell(value: 'Tom Bass', columnName: 'name'),
                //       DataGridCell(value: 'Tom Bass', columnName: 'name1'),
                //       DataGridCell(value: 'Developer', columnName: 'designation'),
                //       DataGridCell(value: 20000, columnName: 'salary')
                //     ]));
                // _employeeDataSource.updateDataGridSource();
              },
              child: Container(
                  color: Colors.greenAccent,
                  child: const Center(
                    child: Icon(Icons.add),
                  )));
        },
        endSwipeActionsBuilder:
            (BuildContext context, DataGridRow row, int rowIndex) {
          return GestureDetector(
              onTap: () {
                // _employeeDataSource.dataGridRows.removeAt(rowIndex);
                // _employeeDataSource.updateDataGridSource();
              },
              child: Container(
                  color: Colors.redAccent,
                  child: const Center(
                    child: Icon(Icons.delete),
                  )));
        },
        columns: List.generate(
            AppList.dataColumnDataList.length,
            (index) => gridColumnWidget(
                  width: AppList.dataColumnDataList[index]['columnName'] == 'id'
                      ? SizeManager.s70
                      : double.nan,
                  columnName: AppList.dataColumnDataList[index]['columnName'],
                  title: AppList.dataColumnDataList[index]['title'],
                )),
      ),
    );
  }
}

GridColumn gridColumnWidget({
  required String columnName,
  required String title,
  double? width,
}) {
  return GridColumn(
      width: width ?? double.nan,
      columnName: columnName,
      // autoFitPadding: EdgeInsets.all(80),
      // visible: true,

      label: Container(
          // padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(
                  // fontWeight: FontWeightManager.semiBold,
                  color: AppColors.whiteColor,
                ),
            overflow: TextOverflow.ellipsis,
          )));
}

class EmployeeDataSource extends DataGridSource {
  final ItemGroupsController _itemGroupsController = Get.find();
  final ItemsController _itemsController = Get.find();
  final UnitsController _unitsController = Get.find();

  EmployeeDataSource({required List<InventoryDocumentDataEntity> employees}) {
    dataGridRows = List<DataGridRow>.generate(
      employees.length,
      (index) {
        final dataGridRow = employees[index];
        return DataGridRow(cells: [
          DataGridCell<int>(
            columnName: AppList.dataColumnDataList[0]['columnName'],
            value: index,
          ),
          DataGridCell<String>(
            columnName: AppList.dataColumnDataList[1]['columnName'],
            value:
                _itemsController.findByID(dataGridRow.itemId!).name.toString(),
          ),
          DataGridCell<String>(
            columnName: AppList.dataColumnDataList[2]['columnName'],
            value:
                _itemGroupsController.findByID(dataGridRow.itemGroupeId!).name,
          ),
          DataGridCell<String>(
            columnName: AppList.dataColumnDataList[3]['columnName'],
            value: _unitsController.findByID(dataGridRow.unitId!).name,
          ),
          DataGridCell<int>(
            columnName: AppList.dataColumnDataList[4]['columnName'],
            value: dataGridRow.quantity,
          ),
          DataGridCell<int>(
            columnName: AppList.dataColumnDataList[5]['columnName'],
            value: dataGridRow.number,
          ),
          DataGridCell<int>(
            columnName: AppList.dataColumnDataList[6]['columnName'],
            value: dataGridRow.difference,
          ),
        ]);
      },
    );
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
          child: Text(
            dataGridCell.value.toString(),
            style: Theme.of(Get.context!).textTheme.bodyMedium!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
    );
  }
}


// class EmployeeDataSource extends DataGridSource {
//   final ItemGroupsController _itemGroupsController = Get.find();
//   final ItemsController _itemsController = Get.find();

//   final UnitsController _unitsController = Get.find();
//   EmployeeDataSource({required List<InventoryDocumentDataEntity> employees}) {
//     dataGridRows = employees
//         .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
//               DataGridCell<int>(
//                   columnName: AppList.dataColumnDataList[0]['columnName'],
//                   value: dataGridRow.id),
//               DataGridCell<String>(
//                   columnName: AppList.dataColumnDataList[1]['columnName'],
//                   value: _itemsController
//                       .findByID(dataGridRow.itemId!)
//                       .name
//                       .toString()),
//               DataGridCell<String>(
//                   columnName: AppList.dataColumnDataList[2]['columnName'],
//                   value: _itemGroupsController
//                       .findByID(dataGridRow.itemGroupeId!)
//                       .name),
//               DataGridCell<String>(
//                   columnName: AppList.dataColumnDataList[3]['columnName'],
//                   value: _unitsController.findByID(dataGridRow.unitId!).name),
//               DataGridCell<int>(
//                   columnName: AppList.dataColumnDataList[4]['columnName'],
//                   value: dataGridRow.quantity),
//               DataGridCell<int>(
//                   columnName: AppList.dataColumnDataList[5]['columnName'],
//                   value: dataGridRow.number),
//               DataGridCell<int>(
//                   columnName: AppList.dataColumnDataList[6]['columnName'],
//                   value: dataGridRow.difference),
//             ]))
//         .toList();
//   }

//   List<DataGridRow> dataGridRows = [];

//   @override
//   List<DataGridRow> get rows => dataGridRows;
//   @override
//   // List<DataGridRow> get rows => dataGridRows;

//   @override
//   DataGridRowAdapter? buildRow(DataGridRow row) {
//     return DataGridRowAdapter(
//         cells: row.getCells().map<Widget>((dataGridCell) {
//       return Container(
//           alignment: Alignment.center,
//           padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p8),
//           child: Text(
//             dataGridCell.value.toString(),
//             style: Theme.of(Get.context!).textTheme.bodyMedium!,
//             // .copyWith(
//             // fontWeight: FontWeightManager.regular,
//             // ),
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//           ));
//     }).toList());
//   }
// }

