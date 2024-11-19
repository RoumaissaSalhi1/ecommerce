import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: 120,
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://mockuptree.com/wp-content/uploads/edd/2024/03/free-t-shirt-mockup-960x640.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 6),
                                Text(
                                  'Pink t-shirt ',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '\$10',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.close),
                              iconSize: 20.0,
                              padding: const EdgeInsets.all(4.0),
                              constraints: const BoxConstraints(
                                minWidth: 24.0,
                                minHeight: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$10',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade700),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  iconSize: 20.0,
                                  padding: const EdgeInsets.all(4.0),
                                  constraints: const BoxConstraints(
                                    minWidth: 24.0,
                                    minHeight: 24.0,
                                  ),
                                ),
                                Text(
                                  '2',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove),
                                  iconSize: 20.0,
                                  padding: const EdgeInsets.all(4.0),
                                  constraints: const BoxConstraints(
                                    minWidth: 24.0,
                                    minHeight: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
