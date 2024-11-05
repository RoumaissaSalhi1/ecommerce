import 'package:ecommece/core/constant/color.dart';
import 'package:ecommece/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOfferCard extends StatelessWidget {
  const CustomOfferCard({
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 150,
        color: ColorApp.primary,
        child: Stack(
          children: [
            Positioned.fill(
              bottom: -60,
              child: SvgPicture.asset(
                Imageasset.wave,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  body,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
