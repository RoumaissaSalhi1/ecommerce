import 'package:ecommece/core/constant/routes.dart';
import 'package:ecommece/core/middleware/my_middleware.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/forget_password.dart';
import 'package:ecommece/view/screen/auth/language.dart';
import 'package:ecommece/view/screen/auth/login.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:ecommece/view/screen/auth/signup.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/success_reset_password.dart';
import 'package:ecommece/view/screen/auth/success_signup.dart';
import 'package:ecommece/view/screen/auth/forgetpassword/verify_code.dart';
import 'package:ecommece/view/screen/auth/verify_code_sign_up.dart';
import 'package:ecommece/view/screen/cart.dart';
import 'package:ecommece/view/screen/myfavorite.dart';
import 'package:ecommece/view/screen/homescreen.dart';
import 'package:ecommece/view/screen/items.dart';
import 'package:ecommece/view/screen/product_details.dart';
import 'package:ecommece/view/screen/settings.dart';
import 'package:ecommece/view/screen/onboarding/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  //home
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productDetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.favorite, page: () => const MyFavorite()),
  GetPage(name: AppRoute.settings, page: () => const Settings()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),

  //onboarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  //auth
  GetPage(
      name: '/', page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
];
