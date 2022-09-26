import 'package:get/get.dart';
import 'package:test_project/model/datamodel.dart';
import 'package:test_project/services/Dataservice.dart';

class Datacontroller extends GetxController{
  var datamodels = <Datamodel>[].obs;

  getdata() async {
    try{
      var data = await DataService().getservice();

      if(data != null){
        datamodels.value = data;
      }
    }catch (e){
      Get.snackbar("Error", '$e');
    }
  }

  @override
  void onInit(){
    getdata();
    super.onInit();
  }
}