import 'package:get/get.dart';
import 'package:getx_project/res/routes/routes_name.dart';
import 'package:getx_project/view/splash.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.SplashScreee, page: () => const SplashScreee(),
            transitionDuration: const Duration(microseconds: 200),
            transition: Transition.leftToRightWithFade),
      ];
}
