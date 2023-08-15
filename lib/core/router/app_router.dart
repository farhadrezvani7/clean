// import 'package:alis/feature/auth/otp/otp_code_page.dart';
// import 'package:alis/feature/auth/phone_input/phone_input_page.dart';
// import 'package:alis/feature/splash/splash_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clean/feature/home/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/", page: HomeRoute.page),
        // AutoRoute(path: "/auth/get-otp-code", page: PhoneInputRoute.page),
        // AutoRoute(path: "/auth/confirm-otp", page: OTPCodeRoute.page),
        RedirectRoute(path: '*', redirectTo: "/"),
      ];
}
