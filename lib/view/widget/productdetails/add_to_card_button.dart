import 'package:ecommece/view/widget/shared/customLongbutton.dart';
import 'package:flutter/material.dart';

class AddToCardButton extends StatelessWidget {
  const AddToCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: CustomLongButton(
          buttonText: 'Add To Cart',
          onPressed: () {
          
          }),
    );
  }
}
