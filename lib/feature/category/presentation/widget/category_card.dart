import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';

Widget categoryCard({
  required BuildContext context,
  required IconData icon,
}) {
  return Container(
    padding: const EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      boxShadow: [BoxShadow(color: MyColor.kGrey, offset: const Offset(3, 3))],
      color: MyColor.kWhite,
    ),
    child: Icon(
      icon,
      size: 24.0,
    ),
  );
}
