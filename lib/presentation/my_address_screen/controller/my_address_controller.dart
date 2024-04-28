import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/my_address_screen/models/my_address_model.dart';/// A controller class for the MyAddressScreen.
///
/// This class manages the state of the MyAddressScreen, including the
/// current myAddressModelObj
class MyAddressController extends GetxController {Rx<MyAddressModel> myAddressModelObj = MyAddressModel().obs;

 }
