import 'package:flutter/material.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/global/title/title_card.dart';
import 'package:interview/core/utils/sizer/size.dart';
import 'package:interview/feature/lunch/data/model/lunch_model.dart';
import 'package:interview/feature/lunch/presentation/widgets/lunch_card.dart';

class Lunch extends StatelessWidget {
  final List<LunchModel> data;
  const Lunch({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          titleCard(title: 'Browse Lunch', seeMore: true),
          sizedBox20(),
          SizedBox(
            width: maxWidth(context),
            height: 220.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: data.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: lunchCard(
                      context: context,
                      productModelData: data[index],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
