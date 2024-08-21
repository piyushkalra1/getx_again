import 'package:get/get.dart';
import 'package:getx_again/mvvm/res/routes/route_nmae.dart';
import 'package:getx_again/mvvm/view/home_view.dart';
import '../../view/login/login_view.dart';
import '../../view/splsh_screen.dart';

class AppRoutes {

  static appRoutes()=>[
    GetPage(name: RoutesName.splash, page: ()=>SplashScreen(),
    transition: Transition.leftToRight,transitionDuration: Duration(microseconds: 500)
    ),

    GetPage(name: RoutesName.login, page: ()=>LoginView(),
        transition: Transition.leftToRight,transitionDuration: Duration(microseconds: 500)
    ),

    GetPage(name: RoutesName.home, page: ()=>HomeView(),
        transition: Transition.leftToRight,transitionDuration: Duration(microseconds: 500)
    ),
  ];
}