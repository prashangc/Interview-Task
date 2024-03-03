class LunchModel {
  final String image;
  final String name;
  final double rating;
  final bool isFreeDelivery;

  const LunchModel({
    required this.image,
    required this.name,
    required this.rating,
    required this.isFreeDelivery,
  });
}

List<LunchModel> lunchList = [
  const LunchModel(
    isFreeDelivery: false,
    name: 'The Cheeses Guide',
    rating: 3.4,
    image:
        'https://www.najmc.com/wp-content/uploads/2020/08/ecommerce-marketing.jpg',
  ),
  const LunchModel(
    isFreeDelivery: false,
    name: 'The Cheeses Guide',
    rating: 3.4,
    image:
        'https://blog.converted.in/hubfs/ecommerce%20marketing%20steratiges.jpg',
  ),
  const LunchModel(
    isFreeDelivery: false,
    name: 'The Cheeses Guide',
    rating: 3.4,
    image: 'https://miro.medium.com/v2/resize:fit:1358/0*ILLbFFfXPuSuRIkU',
  ),
  const LunchModel(
    isFreeDelivery: false,
    name: 'The Cheeses Guide',
    rating: 3.4,
    image:
        'https://codedesign.org/storage/app/media/uploaded-files/ecommerce-advertising-the-complete-guide.jpeg',
  ),
];
