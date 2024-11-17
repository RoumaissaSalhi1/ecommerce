import 'package:flutter/material.dart';

class CustomSearchBarAndNotifications extends StatelessWidget {
  const CustomSearchBarAndNotifications({
    super.key,
    required this.hintText,
    required this.onPressedSearch,
    required this.onPressedIcon,
    required this.onPressedFavorite,
  });
  final String hintText;
  final void Function()? onPressedSearch;
  final void Function()? onPressedIcon;
  final void Function()? onPressedFavorite;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: onPressedSearch,
              icon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 20),
            filled: true,
            fillColor: Colors.grey.shade200,
          ),
        )),
        const SizedBox(width: 10),
        IconButton(
          onPressed: onPressedIcon,
          icon: const Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: onPressedFavorite,
          icon: const Icon(
            Icons.favorite_border_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}
