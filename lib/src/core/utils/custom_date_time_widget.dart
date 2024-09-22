import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osa_pro/src/core/constants/colors.dart';

Future<DateTime> customDateTimeWidget({required DateTime selectDate}) async {
  //data.value = DateFormat.yMMMd().format(DateTime.now());

  DateTime? pickerDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(
          days: 5,
        ),
      ),
      builder: (ctx, child) {
        return Theme(
          data: Theme.of(ctx).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor, // <-- SEE HERE
              onPrimary: AppColors.whiteColor, // <-- SEE HERE
              onSurface: Colors.black54, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black, // button text color
              ),
            ),
          ),
          child: child!,
        );
      });
  if (pickerDate != null && pickerDate != selectDate) {
    selectDate = pickerDate;
    return selectDate;
  } else {
    return selectDate;
  }
  //print('Date :$data');
}
