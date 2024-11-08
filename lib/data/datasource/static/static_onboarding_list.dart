import 'package:ecommece/core/constant/imageasset.dart';
import 'package:ecommece/data/model/onboardingmodel.dart';

List<OnBoardingModel> OnBoardingList = [
  OnBoardingModel(
      title: 'Choose Product',
      image: Imageasset.onBoardingMarketPlace,
      body:
          'We have a 100k product, Choose your product \n your product from our E-commerce shop!'),
  OnBoardingModel(
      title: 'Easy & Safe Payment',
      image: Imageasset.onBoardingPayment,
      body:
          'Easy checkout & safe payment method. Trusted by our costumers from all over the world.'),
  OnBoardingModel(
      title: 'Track Your Order',
      image: Imageasset.onBoardingTracking,
      body:
          'Best tracker have been used for track your order. You will know where your product is at the moment.'),
  OnBoardingModel(
      title: 'Fast Delivery',
      image: Imageasset.onBoardingDelivery,
      body:
          'Reliable and fast delivery. Deliver your product the fastest way possible'),
];
