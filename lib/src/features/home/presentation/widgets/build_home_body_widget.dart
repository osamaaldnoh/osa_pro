import 'package:flutter/material.dart';
import 'package:osa_pro/src/core/constants/app_string.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/extensions/app_extensions_context.dart';
import 'package:osa_pro/src/core/type/root_list.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/features/home/presentation/widgets/build_services_list_widget.dart';

class BuildHomeBodyWidget extends StatelessWidget {
  const BuildHomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HieghtSpacer(height: SizeManager.s20),
        Container(
          padding: EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(
            horizontal: MarginManager.m18,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              // color: context.bgColor,
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(RadiusManager.r10),
              boxShadow: const [
                BoxShadow(
                    // color: AppColors.shadowsColor,
                    color: Color(0x402F4670),
                    // color: AppColors.primaryColor,
                    blurRadius: RadiusManager.r8,
                    spreadRadius: 0,
                    offset: Offset(2, 2))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PaddingManager.p16,
                  vertical: PaddingManager.p10,
                ),
                child: CustomTextWidget(
                  text: AppString.services,
                  style: context.bodyLarge!.copyWith(
                      // fontWeight: FontWeightManager.bold,
                      // color: AppColors.hintTextColor
                      ),
                ),
              ),
              const HieghtSpacer(height: SizeManager.s8),
              // Wrap(
              //   spacing: 20,
              //   children: List.generate(6, (index) => Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Container(
              //                 // padding: EdgeInsets.all(10),
              //                 width: 70,
              //                 height: 70,
              //                 decoration: BoxDecoration(
              //                   // color: AppColors.primaryColor,
              //                   color: Color(0x102F4670),
              //                   borderRadius: BorderRadius.circular(15)
              //                 ),
              //                 child: Icon(Icons.file_copy,
              //                 color: AppColors.primaryColor,
              //                 ),
              //               ),
              //               HieghtSpacer(height: 10,),
              //               Text("جرد جديد",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //                 fontWeight: FontWeightManager.semiBold,
              //               ),)
              //             ],
              //           ),),
              // )

              BuildServicesListWidget(
                servicesListItems: AppList.homeServicesListItems,
              ),

              // const HieghtSpacer(height: SizeManager.s8),
              // Container(
              //   alignment: Alignment.center,
              //   width: 50,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: Color(0x402F4670),
              //     shape: BoxShape.circle,
              //   ),
              //   child: CustomIconWidget(
              //     icon: FontAwesomeIcons.user,
              //     iconColor: Color(0xFF2F4670),
              //   ),
              // )
            ],
          ),
        )
      ],
    );
  }
}
