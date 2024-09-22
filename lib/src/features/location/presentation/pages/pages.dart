import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:osa_pro/src/core/constants/colors.dart';
import 'package:osa_pro/src/core/constants/dimensions.dart';
import 'package:osa_pro/src/core/widgets/custom_app_bar_widget.dart';
import 'package:osa_pro/src/core/widgets/custom_button.dart';
import 'package:osa_pro/src/core/widgets/custom_text.dart';
import 'package:osa_pro/src/core/widgets/hieght_spacer.dart';
import 'package:osa_pro/src/core/widgets/width_spacer.dart';
import 'package:osa_pro/src/features/location/presentation/getX/location_controller.dart';

class LocationPage extends StatelessWidget {
  final bool visibleMap = true;
  LocationPage({super.key});
  final LocationController googleAppController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWidget(
        title: "geolocation".tr,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Obx(() {
              return googleAppController.kGooglePlex.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      // fit: StackFit.loose,
                      children: [
                        GoogleMap(
                          markers: googleAppController.myMarker,
                          mapType: MapType.normal,
                          onTap: (LatLng latLng) {
                            googleAppController.changeMarker(latLng);
                          },
                          initialCameraPosition:
                              googleAppController.kGooglePlex.first,
                          onMapCreated: (GoogleMapController controller) {
                            googleAppController.mapController = controller;
                          },
                        ),
                        Positioned(
                            bottom: SizeManager.s5,
                            left: SizeManager.s10,
                            right: SizeManager.s52,
                            child: Container(
                              height: SizeManager.s50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: AppColors.grayColor,
                                borderRadius:
                                    BorderRadius.circular(RadiusManager.r10),
                              ),
                              child: CustomTextWidget(
                                text: "Osama",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: AppColors.primaryColor,
                                      // fontWeight: FontWeightManager.bold,
                                    ),
                              ),
                            ))
                      ],
                    );
            }
                // googleMapController.kGooglePlex
                // == null?
                ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(PaddingManager.p10),
              child: Column(
                children: [
                  GestureDetector(
                    // onTap: ()=>Get.toNamed(RoutesName.googleMapScreen),
                    child: Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.location,
                          size: SizeManager.s20,
                          color: AppColors.lightBlackColor,
                        ),
                        const WidthSpacer(width: SizeManager.s10),
                        Text(
                          "geographical_location".tr,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    // fontWeight: FontWeightManager.semiBold,
                                    fontSize: AppFontSize.fontSizeDefault,
                                    color: AppColors.lightBlackColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const HieghtSpacer(height: SizeManager.s15),
                  CustomButton(
                    buttonText: "detect_location".tr,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Api
//AIzaSyDb1B7p3NGtfgNjO_WSqdsouAjR_CL2HD0
