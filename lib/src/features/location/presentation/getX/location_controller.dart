import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationController extends GetxController {
  late Position position;
  RxSet<Marker> myMarker = <Marker>{}.obs;
  RxList<Placemark> placemarkList = RxList([]);

  // = Rx(CameraPosition(target: LatLng(0.0,
  //  0.0,),zoom: 14.4746,));
  late GoogleMapController mapController;
  RxList<CameraPosition> kGooglePlex = <CameraPosition>[].obs;

  @override
  void onInit() {
    super.onInit();
    getPer();
  }

  Future<LocationPermission> getPer() async {
    bool services;
    LocationPermission per;
    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      // Get.snackbar("Services", "Services Not Enabled");
    }
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      //  getLatAndLong();
      per = await Geolocator.requestPermission();
    }
    // else{
    //   getLatAndLong();
    // }
    getLatAndLong();

    return per;
  }

  void getLatAndLong() async {
    position = await Geolocator.getCurrentPosition().then((value) => value);
    // lat = position.latitude;
    // long = position.longitude;
    kGooglePlex.add(CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 14.4746,
    ));
    //   position = await Geolocator.getCurrentPosition().then((value) => value);
    //   // lat = position.latitude;
    //   // long = cl.longitude;
    //   kGooglePlex.value = CameraPosition(
    //   target: LatLng(position.latitude, position.longitude),
    //   zoom: 14.4746,
    // );
    myMarker.add(Marker(
        markerId: const MarkerId("1"),
        position: LatLng(position.latitude, position.longitude)));
    placemarkList.value =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    // Get.snackbar(placemarkList[0].locality.toString(),
    // placemarkList[0].street.toString());
  }

  changeMarker(LatLng latLng) async {
    myMarker.remove(const Marker(markerId: MarkerId("1")));
    myMarker.add(Marker(markerId: const MarkerId("1"), position: latLng));
    placemarkList.value = await GeocodingPlatform.instance!
        .placemarkFromCoordinates(latLng.latitude, latLng.longitude);
    // Get.snackbar(placemarkList[0].locality.toString(),
    // placemarkList[0].street.toString());
    // myMarker.remove(Marker(markerId: MarkerId("1")));
    // myMarker.add(Marker(markerId: MarkerId("1"),position: LatLng(newLat, newLong)));
    // placemarkList.value =  await placemarkFromCoordinates(newLat, newLong);
    // print(placemarkList[0].street);
    // Get.snackbar(placemarkList[0].locality.toString(), placemarkList[0].street.toString());
    // googleMapController.animateCamera(CameraUpdate.newLatLng(LatLng(newLat, newLong)));
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }
}
