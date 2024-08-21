
import 'package:getx_again/mvvm/data/network/networkapiServices.dart';
import 'package:getx_again/mvvm/res/appurls/app_urls.dart';

class LoginRepository {
  final _apiServices = NetworkApiService();

   Future<dynamic> loginApi(var data ,var headers)async{
    dynamic response = await _apiServices.getPostApiResponse(AppUrls.loginapi, data, headers);
   return response;
}
}