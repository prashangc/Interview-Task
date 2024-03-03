import 'package:flutter/material.dart';
import 'package:interview/core/global/loading/loading.dart';
import 'package:interview/core/utils/textstyle/textstyle.dart';
import 'package:interview/feature/home/data/model/pagination_model.dart';
import 'package:interview/feature/home/domain/usecase/home_usecase.dart';

class PaginationLoading extends StatelessWidget {
  final HomeUsecase homeUsecase;
  const PaginationLoading({super.key, required this.homeUsecase});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
        initialData: const PaginationModel(breakfastModel: [], status: 0),
        stream: homeUsecase.breakfastDataBloc.stateStream,
        builder: (ctx, snapshot) {
          if (snapshot.data.status == 0) {
            return Text(
              'View More',
              style: kStyle12B,
            );
          } else if (snapshot.data.status == 1) {
            return const CircleLoading();
          } else {
            return Text(
              'No more data',
              style: kStyle12B,
            );
          }
        });
  }
}
