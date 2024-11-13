import 'package:ecommece/view/widget/productdetails/product_color.dart';
import 'package:ecommece/view/widget/productdetails/product_description.dart';
import 'package:ecommece/view/widget/productdetails/product_name_price.dart';
import 'package:ecommece/view/widget/productdetails/product_rating.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductNameAndPrice(),
          const SizedBox(height: 8),
          const ProductRating(),
          const SizedBox(height: 16),
          const ProductColor(),
          const SizedBox(height: 8),
          Divider(
            color: Colors.grey.shade300,
            thickness: 1,
          ),
         const ProductDescription(),
        ],
      ),
    );
  }
}

