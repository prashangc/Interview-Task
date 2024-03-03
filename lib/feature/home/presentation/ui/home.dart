import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/injector/dependency_injection.dart';
import 'package:interview/feature/advertisement/domain/usecase/advertisement_usecase.dart';
import 'package:interview/feature/advertisement/presentation/ui/advertisement.dart';
import 'package:interview/feature/breakfast/presentation/ui/breakfast.dart';
import 'package:interview/feature/category/presentation/ui/category.dart';
import 'package:interview/feature/home/domain/usecase/home_usecase.dart';
import 'package:interview/feature/home/presentation/widgets/loading.dart';
import 'package:interview/feature/home/presentation/widgets/location_card.dart';
import 'package:interview/feature/home/presentation/widgets/top_bar.dart';
import 'package:interview/feature/lunch/data/model/lunch_model.dart';
import 'package:interview/feature/lunch/presentation/ui/lunch.dart';

class HomePage extends StatefulWidget {
  final HomeUsecase homeUsecase;
  const HomePage({super.key, required this.homeUsecase});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.homeUsecase.homeScrollController = ScrollController()
      ..addListener(widget.homeUsecase.loadMore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.lightColorScheme.primary,
        toolbarHeight: 0.0,
      ),
      backgroundColor: MyColor.lightColorScheme.background,
      body: SafeArea(
        child: Column(children: [
          topBar(context),
          Expanded(
            child: SingleChildScrollView(
              controller: widget.homeUsecase.homeScrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  locationCard(context),
                  Advertisement(
                      advertisementUseCase: getIt<AdvertisementUseCase>()),
                  sizedBox16(),
                  const Category(),
                  sizedBox12(),
                  Lunch(data: lunchList),
                  sizedBox12(),
                  Breakfast(homeUsecase: widget.homeUsecase),
                  sizedBox12(),
                  PaginationLoading(homeUsecase: widget.homeUsecase),
                  sizedBox12(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
