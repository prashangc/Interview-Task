import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';

Widget searchBar(BuildContext context) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: MyColor.kWhite,
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 16,
            color: MyColor.kBlack,
          ),
          sizedBox16(),
          Text(
            'Search',
            style: kStyle12,
          ),
          sizedBox12(),
        ],
      ),
    ),
  );
}
