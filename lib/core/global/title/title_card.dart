import 'package:flutter/material.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';

Widget titleCard({required String title, bool? seeMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: kStyle14B,
      ),
      if (seeMore != null) ...{
        Row(
          children: [
            Text(
              'View All',
              style: kStyle14B,
            ),
            sizedBox2(),
            sizedBox2(),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 20.0,
            ),
          ],
        ),
      }
    ],
  );
}
