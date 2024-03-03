import 'package:interview/feature/advertisement/data/model/advertisement_model.dart';

abstract class AdvertisementRepositoryInterface {
  List<AdvertisementModel> getAdvertisement();
}
