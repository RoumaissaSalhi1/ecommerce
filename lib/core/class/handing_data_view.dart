import 'package:ecommece/core/class/status_request.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandingDataView extends StatelessWidget {
  const HandingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(Imageasset.loadingLottie))
        : statusRequest == StatusRequest.offlineFailure
            ? Center(child: Lottie.asset(Imageasset.offlineLottie))
            : statusRequest == StatusRequest.serverFailure
                ? Center(child: Lottie.asset(Imageasset.serverLottie))
                : statusRequest == StatusRequest.failure
                    ? Center(child: Lottie.asset(Imageasset.nodataLottie))
                    : widget;
  }
}
