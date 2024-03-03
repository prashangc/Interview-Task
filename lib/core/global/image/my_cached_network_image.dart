import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:interview/config/theme/colors.dart';

Widget myCachedNetworkImage({
  required double myWidth,
  required double myHeight,
  required String myImage,
  required BorderRadiusGeometry borderRadius,
}) {
  return CachedNetworkImage(
    width: myWidth,
    height: myHeight,
    imageUrl: myImage,
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
        ),
      ),
    ),
    placeholder: (context, url) => Center(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircularProgressIndicator(
        color: MyColor.kBlack,
        strokeWidth: 1.5,
        backgroundColor: MyColor.kWhite,
      ),
    )),
    errorWidget: (context, url, error) => const Icon(Icons.perm_identity),
  );
}

Widget myCachedNetworkImageCircle({
  required double myWidth,
  required double myHeight,
  required String myImage,
}) {
  return CachedNetworkImage(
    width: myWidth,
    height: myHeight,
    imageUrl: myImage.toString(),
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColor.kWhite,
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          alignment: FractionalOffset.topCenter,
        ),
      ),
    ),
    placeholder: (context, url) => Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircularProgressIndicator(
        color: MyColor.kPrimary,
        strokeWidth: 1.5,
        backgroundColor: MyColor.kWhite,
      ),
    )),
    errorWidget: (context, url, error) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColor.kWhite,
      ),
      child: const Icon(Icons.perm_identity),
    ),
  );
}
