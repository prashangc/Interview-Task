import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget myRatingBar({
  required double rating,
}) {
  return RatingBar.builder(
      itemCount: 5,
      itemBuilder: (context, _) {
        return const Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
      initialRating: rating,
      updateOnDrag: false,
      itemSize: 12.0,
      itemPadding: const EdgeInsets.only(right: 2.0),
      onRatingUpdate: (rating) {});
}
