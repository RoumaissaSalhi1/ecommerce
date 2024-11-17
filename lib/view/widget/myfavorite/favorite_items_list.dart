  import 'package:ecommece/data/model/my_favorite_model.dart';
 import 'package:ecommece/view/widget/myfavorite/custom_fav_item_card.dart';
import 'package:flutter/material.dart';
 
class FavoriteItemsList extends StatelessWidget {
  const FavoriteItemsList({
    super.key,
    required this.favItems,
  });
  final List<MyFavoriteModel> favItems;

  @override
  Widget build(BuildContext context) {
 
    return GridView.builder(
      shrinkWrap: true, // take up only as much space as its content requires
      physics: const NeverScrollableScrollPhysics(),
      itemCount: favItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.67),
      itemBuilder: (context, index) {
        
        return CustomFavItemCard(
          item: favItems[index],
        );
      },
    );
  }
}

 
