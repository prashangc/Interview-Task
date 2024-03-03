import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/image/my_cached_network_image.dart';
import 'package:interview/core/global/ratings/my_rating_bar.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';
import 'package:interview/feature/breakfast/data/model/breakfast_model.dart';

Widget breakfastCard({
  required BreakfastModel data,
  required BuildContext context,
}) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: MyColor.kWhite.withOpacity(0.4),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
          ),
        ),
        child: myCachedNetworkImage(
          myWidth: 120.0,
          myHeight: 140.0,
          myImage: data.image,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
          ),
        ),
      ),
      Expanded(
        child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: MyColor.kWhite,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: kStyle12B.copyWith(
                    fontSize: 17.0,
                  ),
                ),
                sizedBox2(),
                sizedBox2(),
                Text(
                  'Per kg',
                  overflow: TextOverflow.ellipsis,
                  style: kStyle12,
                ),
                sizedBox2(),
                sizedBox2(),
                Row(
                  children: [
                    Text(
                      'Rs 200',
                      overflow: TextOverflow.ellipsis,
                      style: kStyle12.copyWith(
                        fontSize: 10.0,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      '- 3%',
                      overflow: TextOverflow.ellipsis,
                      style: kStyle12.copyWith(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                sizedBox2(),
                sizedBox2(),
                Row(
                  children: [
                    myRatingBar(rating: data.rating),
                    Row(
                      children: [
                        Text(
                          '${data.rating.toString()}/5',
                          style: kStyle12.copyWith(fontSize: 11.0),
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '(3 Reviews)',
                          style: kStyle12.copyWith(fontSize: 10.0),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
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
                            '200',
                            overflow: TextOverflow.ellipsis,
                            style: kStyle12.copyWith(
                              color: MyColor.kBlack,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
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
                    ),
                  ],
                ),
              ],
            )),
      )
    ],
  );
}
