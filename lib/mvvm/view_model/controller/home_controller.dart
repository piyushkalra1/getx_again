

import 'package:get/get.dart';
import 'package:getx_again/mvvm/data/response/status.dart';
import 'package:getx_again/mvvm/model/model_list.dart';
import 'package:getx_again/repository/home_repository.dart';

class HomeController extends GetxController{

  final _api = HomeRepository();

  final rxRequestStatus = Status.Loading.obs;
  final userlist = UserListModel().obs;
  RxString error ="".obs ;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value  ;
  void setUserList(UserListModel _value) => userlist.value = _value ;
  void setError(String _value) => error.value = _value ;

  void useristapi() {
    _api.userListApi().then((value){
      setRxRequestStatus(Status.Completed);
      setUserList(value);
    }).onError((error,stackTrace){
     setError(error.toString());
      setRxRequestStatus(Status.Error);
    });
  }
}