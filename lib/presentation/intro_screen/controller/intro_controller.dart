import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/intro_screen/models/intro_model.dart';

import '../models/categorie_item_model.dart';

/// A controller class for the IntroScreen.
///
/// This class manages the state of the IntroScreen, including the
/// current introModelObj
class IntroController extends GetxController {
  Rx<IntroModel> introModelObj = IntroModel().obs;
  List<CategorieItemModel> categoriesList =[
    CategorieItemModel(
      text: 'Wrestling',
    ),
    CategorieItemModel(
      text: 'Sailing',
    ),
    CategorieItemModel(
      text: 'Triathlon',
    ),
    CategorieItemModel(
      text: 'Sauna',
    ),
    CategorieItemModel(
      text: 'Comedy',
    ),
    CategorieItemModel(
      text: 'Rave',
    ),CategorieItemModel(
      text: 'Gym & fitness',
    ),
    CategorieItemModel(
      text: 'Cafe',
    ),CategorieItemModel(
      text: 'Gaming',
    ),CategorieItemModel(
      text: 'Book',
    ),
    CategorieItemModel(
      text: 'Hockey player',
    ),CategorieItemModel(
      text: 'NFT',
    ),CategorieItemModel(
      text: 'Tennis',
    ),CategorieItemModel(
      text: 'Volleyball',
    ),CategorieItemModel(
      text: 'Baseball',
    ),
    CategorieItemModel(
      text: 'Archery',
    ),CategorieItemModel(
      text: 'Ping pong',
    ),CategorieItemModel(
      text: 'Surfing',
    ),CategorieItemModel(
      text: 'Golf',
    ),CategorieItemModel(
      text: 'Boxing',
    ),
    CategorieItemModel(
      text: 'Gaga',
    ),
    CategorieItemModel(
      text: 'Aerobatics',
    ),CategorieItemModel(
      text: 'Gliding',
    ),CategorieItemModel(
      text: 'Climbing',
    ),CategorieItemModel(
      text: 'Mixed climbing',
    ),CategorieItemModel(
      text: 'BMX',
    ),
    CategorieItemModel(
      text: 'Darts',
    ),
    CategorieItemModel(
      text: 'Diving',
    ),
    CategorieItemModel(
      text: 'Fencing',
    ),
    CategorieItemModel(
      text: 'Badminton',
    ),
    CategorieItemModel(
      text: 'Bowling',
    ),CategorieItemModel(
      text: 'Cave',
    ),CategorieItemModel(
      text: 'Bird watching',
    ),
    CategorieItemModel(
      text: 'Canoeing',
    ),
    CategorieItemModel(
      text: 'Pool',
    ),CategorieItemModel(
      text: 'Judo',
    ),


  ];
}
