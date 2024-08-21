
import 'package:getx_again/mvvm/data/network/networkapiServices.dart';
import 'package:getx_again/mvvm/model/model_list.dart';
import 'package:getx_again/mvvm/res/appurls/app_urls.dart';

class HomeRepository {
  final _apiServices = NetworkApiService();

  Future<UserListModel> userListApi()async{
    dynamic response = await _apiServices.getGetApiResponse(AppUrls.usserlistapi,);
    return UserListModel.fromJson(response);
  }
}