import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';
import 'package:interview/core/global/image/my_cached_network_image.dart';
import 'package:interview/core/global/spacer/spacer.dart';
import 'package:interview/core/utils/sizer/size.dart';
import 'package:interview/feature/advertisement/domain/usecase/advertisement_usecase.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Advertisement extends StatelessWidget {
  final AdvertisementUseCase advertisementUseCase;
  const Advertisement({super.key, required this.advertisementUseCase});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
              height: maxHeight(context) / 4,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 400),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                advertisementUseCase.sliderBloc.storeData(data: index);
              }),
          itemCount: advertisementUseCase.call().length,
          itemBuilder: (context, index, realIndex) {
            return SizedBox(
              width: maxWidth(context),
              height: maxHeight(context) / 4,
              child: myCachedNetworkImage(
                myWidth: maxWidth(context),
                myHeight: maxHeight(context),
                myImage: advertisementUseCase.call()[index].image.toString(),
                borderRadius: const BorderRadius.all(Radius.zero),
              ),
            );
          },
        ),
        sizedBox12(),
        StreamBuilder<dynamic>(
            initialData: 0,
            stream: advertisementUseCase.sliderBloc.stateStream,
            builder: (c, s) {
              return SmoothPageIndicator(
                controller: PageController(initialPage: s.data),
                count: advertisementUseCase.call().length,
                effect: ExpandingDotsEffect(
                    dotWidth: 6,
                    dotHeight: 6,
                    activeDotColor: MyColor.kBlack,
                    spacing: 8,
                    dotColor: MyColor.kBlack.withOpacity(0.1)),
              );
            }),
      ],
    );
  }
}
