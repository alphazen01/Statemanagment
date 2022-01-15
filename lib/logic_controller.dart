import 'package:get/get.dart';

class LogicController extends GetxController{

RxInt countDouble=0.obs;
RxInt count=0.obs;
  increaseCount(){
    
      count++;
   
    
  }




 
  increment(){
    
      countDouble=countDouble+2;
   
  }




}