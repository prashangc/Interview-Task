import 'package:interview/feature/advertisement/data/model/advertisement_model.dart';
import 'package:interview/feature/advertisement/domain/repository/advertisement_repo_interface.dart';

class AdvertisementRepository extends AdvertisementRepositoryInterface {
  @override
  List<AdvertisementModel> getAdvertisement() {
    return advertisementList;
  }
}
