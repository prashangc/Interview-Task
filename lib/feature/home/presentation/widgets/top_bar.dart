import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/sizer/size.dart';
import 'package:interview/feature/home/presentation/widgets/search_bar.dart';

Widget topBar(BuildContext context) {
  return Container(
      width: maxWidth(context),
      padding: const EdgeInsets.all(12.0),
      color: MyColor.lightColorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchBar(context),
          sizedBox16(),
          CircleAvatar(
            radius: 20.0,
            backgroundColor: MyColor.kWhite.withOpacity(0.9),
            child: Icon(
              Icons.perm_identity,
              color: MyColor.kBlack,
            ),
          )
        ],
      ));
}
