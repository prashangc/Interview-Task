import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/global/title/title_card.dart';
import 'package:interview/feature/breakfast/data/model/breakfast_model.dart';
import 'package:interview/feature/breakfast/presentation/widgets/breakfast_card.dart';
import 'package:interview/feature/home/data/model/pagination_model.dart';
import 'package:interview/feature/home/domain/usecase/home_usecase.dart';

class Breakfast extends StatelessWidget {
  final HomeUsecase homeUsecase;
  const Breakfast({super.key, required this.homeUsecase});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          sizedBox20(),
          titleCard(title: 'Browse Breakfast'),
          sizedBox20(),
          StreamBuilder<dynamic>(
              initialData: PaginationModel(
                  breakfastModel: homeUsecase.breakfastModelData, status: 0),
              stream: homeUsecase.breakfastDataBloc.stateStream,
              builder: (c, s) {
                List<BreakfastModel> list = s.data.breakfastModel;
                return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: list.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: MyColor.kGrey,
                                offset: const Offset(3, 3))
                          ],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                          ),
                        ),
                        margin: const EdgeInsets.only(bottom: 12.0),
                        child: breakfastCard(
                          context: context,
                          data: list[index],
                        ),
                      );
                    });
              }),
        ],
      ),
    );
  }
}
