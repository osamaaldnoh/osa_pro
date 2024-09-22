import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';

class BuildFilterSortItemsWidget extends StatelessWidget {
  final String? title;
  final IconData iconSort;
  final List<Map<String, dynamic>> filterItemList;
  final void Function(Map<String, dynamic>?)? onChanged;
  final int? indexSort;
  const BuildFilterSortItemsWidget({
    super.key,
    this.title,
    required this.iconSort,
    required this.filterItemList,
    this.onChanged,
    this.indexSort,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: FaIcon(
          iconSort,
          size: SizeManager.s18,
          color: AppColors.secondaryColor,
        ),
        alignment: Alignment.centerRight,
        items: List.generate(
          filterItemList.length,
          (index) => DropdownMenuItem(
            alignment: Alignment.center,
            value: filterItemList[index],
            child: Container(
              height: SizeManager.s30,
              padding: const EdgeInsets.symmetric(
                horizontal: PaddingManager.p5,
              ),
              // margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: indexSort == filterItemList[index]['id']
                    ? const Color(0x102F4670)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(RadiusManager.r10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: CustomTextWidget(
                          text: filterItemList[index]['title'] ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  // fontWeight: FontWeightManager.semiBold,
                                  color:
                                      indexSort == filterItemList[index]['id']
                                          ? AppColors.primaryColor
                                          : AppColors.secondaryColor))),
                  FaIcon(
                      indexSort == filterItemList[index]['id']
                          ? Icons.radio_button_on
                          : Icons.radio_button_off,
                      size: SizeManager.s18,
                      color: indexSort == filterItemList[index]['id']
                          ? AppColors.primaryColor
                          : AppColors.secondaryColor),
                ],
              ),
            ),
          ),
        ),
        onChanged: onChanged,
        dropdownStyleData: DropdownStyleData(
          width: SizeManager.s180,
          maxHeight: MediaQuery.of(context).size.height * 0.5,
          direction: DropdownDirection.right,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusManager.r10),
            color: AppColors.bgColor,
          ),
          elevation: 1,
          offset: const Offset(1, 1),
        ),
        menuItemStyleData: MenuItemStyleData(
          customHeights: [
            ...List<double>.filled(filterItemList.length, SizeManager.s33),
            // 11,
            // ...List<double>.filled(filterItemList.length, 48),
          ],
          padding: const EdgeInsets.symmetric(
              vertical: 0, horizontal: PaddingManager.p12),
        ),
      ),
    );
  }
}
