import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';

class ShowStyleWidget extends StatelessWidget {
  const ShowStyleWidget({
    super.key,
    required this.title,
    required this.icon,
    this.isActiviteColor,
    this.isSort,
    this.widget,
  });
  final String title;
  final IconData icon;
  final Color? isActiviteColor;
  final bool? isSort;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: AppFontSize.fontSizeExtraSmall,
                // fontWeight: FontWeightManager.semiBold,
                color: isActiviteColor ?? AppColors.secondaryColor,
              ),
        ),
        const HieghtSpacer(height: SizeManager.s5),
        isSort == true && widget != null
            ? widget!
            : FaIcon(
                icon,
                size: SizeManager.s18,
                color: isActiviteColor ?? AppColors.secondaryColor,
              ),
        //  isSort?
        //   SizedBox(
        //                             height: 32,
        //                             child:
        //                             Theme(data: ThemeData(
        //                               highlightColor: Colors.transparent,
        //                             ), child: PopupMenuButton(
        //                               padding: EdgeInsets.symmetric(horizontal: 4),
        //                               iconSize:  SizeManager.s18,
        //                               surfaceTintColor: Color(0x102F4670),
        //                               // splashRadius: 10,
        //                               shape: BeveledRectangleBorder(
        //                                 borderRadius: BorderRadius.circular(5),
        //                               ),
        //                               // elevation: 1,
        //                               color: AppColors.bgColor,
        //                               splashRadius: 10,
        //                                offset: Offset(1, 1),
        //                                clipBehavior: Clip.none,
        //                                position: PopupMenuPosition.under,
        //                               shadowColor: AppColors.shadowsColor,
        //                               constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.width*0.8),
        //                               icon: FaIcon(AppList.showStyleList.last['icon'],
        //                               size: SizeManager.s18,
        //                                 color:  AppColors.secondaryColor
        //                                 ,),
        //                               itemBuilder: (context)=>
        //                               List.generate(filterItemList.length,
        //                                (index) => PopupMenuItem(
        //                                 height: 28,
        //                                padding: EdgeInsets.zero,
        //                                 onTap: (){
        //                                   inventoryItemsController.filterIndex.value = index;
        //                                   //  inventoryItemsController.filterIndex.value = filterItemList[index]['id'];
        //                                    print("value :${filterItemList[index]['id']} : $index");
        //                                    inventoryItemsController
        //                                    .filterInventoryItem(filterId: filterItemList[index]['id']);
        //                                 },
        //                                 value: filterItemList[index]['title'],
        //                                 child: Obx(() => Container(
        //                                   height: 30,
        //                                    padding: EdgeInsets.symmetric(
        //                                   horizontal: PaddingManager.p10,
        //                                 ),
        //                                 margin: EdgeInsets.all(5),
        //                                   decoration: BoxDecoration(
        //                                     color: inventoryItemsController.filterIndex.value == index?
        //                                     Color(0x102F4670):Colors.transparent,
        //                                     borderRadius: BorderRadius.circular(RadiusManager.r10),
        //                                   ),
        //                                   child: Row(children: [
        //                                                               Expanded(child: CustomTextWidget(
        //                                                                 text:
        //                                                                 filterItemList[index]['title']??'',
        //                                                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
        //                                                                   fontWeight: FontWeightManager.semiBold,
        //                                                                   color: inventoryItemsController.filterIndex.value == index?
        //                                                                   AppColors.primaryColor:AppColors.secondaryColor
        //                                                                  ))),
        //                                                                  Icon(inventoryItemsController.filterIndex.value == index?
        //                                                                    Icons.radio_button_on :Icons.radio_button_off,
        //                                                                    size: 18,
        //                                     color:  inventoryItemsController.filterIndex.value == index?
        //                                     AppColors.primaryColor:AppColors.secondaryColor),
        //                                     // )
        //                                    ],),
        //                                 )
        //                                 )
        //                                 )
        //                                 )
        //                             ),
        //                         )  ),

        const HieghtSpacer(height: SizeManager.s8),
      ],
    );
  }
}
