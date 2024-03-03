import 'package:flutter/material.dart';
import 'package:interview/core/services/state/state_handler_bloc.dart';
import 'package:interview/feature/breakfast/data/model/breakfast_model.dart';
import 'package:interview/feature/home/data/model/pagination_model.dart';

class HomeUsecase {
  ScrollController homeScrollController = ScrollController();
  StateHandlerBloc breakfastDataBloc = StateHandlerBloc();
  List<BreakfastModel> breakfastModelData = breakfastList.sublist(0, 4);
  void loadMore() {
    if (homeScrollController.offset >=
            homeScrollController.position.maxScrollExtent &&
        !homeScrollController.position.outOfRange) {
      int startIndex = breakfastModelData.length;
      int endIndex = startIndex + 4;
      if (endIndex <= breakfastList.length) {
        breakfastDataBloc.storeData(
            data:
                PaginationModel(status: 0, breakfastModel: breakfastModelData));

        Future.delayed(const Duration(seconds: 2), () {
          breakfastModelData
              .addAll(breakfastList.getRange(startIndex, endIndex));
        });
        breakfastDataBloc.storeData(
            data:
                PaginationModel(status: 1, breakfastModel: breakfastModelData));
      } else {
        breakfastDataBloc.storeData(
            data:
                PaginationModel(status: 2, breakfastModel: breakfastModelData));
      }
    } else {}
  }
}
