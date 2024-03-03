import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';

Widget locationCard(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    color: MyColor.kWhite,
    child: Row(
      children: [
        Icon(
          Icons.location_on,
          color: MyColor.kBlack,
          size: 14.0,
        ),
        const SizedBox(width: 15.0),
        Text('Add Shipping Address', style: kStyle12B)
      ],
    ),
  );
}
