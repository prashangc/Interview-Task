import 'package:flutter/material.dart';
import 'package:interview/core/utils/sizer/size.dart';
import 'package:interview/feature/category/presentation/widget/category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12.0),
        width: maxWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            categoryCard(context: context, icon: Icons.dinner_dining_outlined),
            categoryCard(context: context, icon: Icons.lunch_dining_outlined),
            categoryCard(
                context: context, icon: Icons.breakfast_dining_outlined),
            categoryCard(context: context, icon: Icons.no_drinks_outlined),
          ],
        ));
  }
}
