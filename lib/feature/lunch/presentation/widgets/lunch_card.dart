import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/image/my_cached_network_image.dart';
import 'package:interview/core/global/ratings/my_rating_bar.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/sizer/size.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';
import 'package:interview/feature/lunch/data/model/lunch_model.dart';

Widget lunchCard({
  required BuildContext context,
  required LunchModel productModelData,
}) {
  return Container(
    width: 160.0,
    margin: const EdgeInsets.only(right: 12.0),
    decoration: BoxDecoration(
      color: MyColor.kWhite,
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
      boxShadow: [BoxShadow(color: MyColor.kGrey, offset: const Offset(3, 3))],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: myCachedNetworkImage(
              myWidth: maxWidth(context),
              myHeight: maxHeight(context),
              myImage: productModelData.image.toString(),
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox2(),
                sizedBox2(),
                Text(
                  productModelData.name.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: kStyle14B,
                ),
                sizedBox2(),
                sizedBox2(),
                myRatingBar(rating: productModelData.rating),
                sizedBox2(),
                sizedBox2(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Rs. 120',
                                overflow: TextOverflow.ellipsis,
                                style: kStyle12.copyWith(
                                  fontSize: 10.0,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                '- 5%',
                                overflow: TextOverflow.ellipsis,
                                style: kStyle12.copyWith(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Rs',
                                overflow: TextOverflow.ellipsis,
                                style: kStyle12.copyWith(
                                  color: MyColor.kBlack,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Text(
                                'Rs. 9000',
                                overflow: TextOverflow.ellipsis,
                                style: kStyle14B,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                        color: MyColor.kBlack,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
