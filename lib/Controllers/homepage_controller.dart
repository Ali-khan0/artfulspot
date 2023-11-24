
import 'package:get/get.dart';


class HomePageController extends GetxController{
  final currentIndex = RxInt(0);


  void updateCIndex(value){
    currentIndex.value = value;
  }
}